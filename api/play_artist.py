import argparse
import configparser
import os.path
from os import path
import sys

config = configparser.ConfigParser()
config.read('/usr/local/Roon/etc/roon_api.ini')

# Set to IP address of your Roon Core
server = config['DEFAULT']['RoonCoreIP']
# Set to Port of your Roon Core
port = config['DEFAULT']['RoonCorePort']
# Name of the file that holds a Roon API token
tokenfile = config['DEFAULT']['TokenFileName']

parser = argparse.ArgumentParser()
parser.add_argument("-a", "--artist", help="artist selection")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.artist:
    artist = args.artist
else:
    artist = config['DEFAULT']['DefaultArtist']
if args.zone:
    target_zone = args.zone
else:
    target_zone = config['DEFAULT']['DefaultZone']

from roonapi import RoonApi
appinfo = {
    "extension_id": "roon_command_line",
    "display_name": "Python library for Roon",
    "display_version": "2.0.2",
    "publisher": "RoonCommandLine",
    "email": "roon@ronrecord.com",
}

# Can be None if you don't yet have a token
if path.exists(tokenfile):
    token = open(tokenfile).read()
else:
    token = "None"

roonapi = RoonApi(appinfo, token, server, port)

# get target zone output_id
outputs = roonapi.outputs

output_id = None
for (k, v) in outputs.items():
    if target_zone in v["display_name"]:
        output_id = k

if output_id is None:
    err = "No zone found matching " + target_zone
    sys.exit(err)
else:
    # Play artist from Library
    found = roonapi.play_media(output_id, ["Library", "Artists", artist], None, False)
    if found:
        print("Found media for artist search term:", artist)
    else:
        artists = roonapi.list_media(output_id, ["Library", "Artists", artist])
        if len(artists) == 0:
            print("\nNo artist name partially matching", artist, "\n")
        else:
            print("\nArtist names partially matching", artist, ":\n")
            print(*artists, sep = "\n")
            if len(artists) == 1:
                artist = artists[0]
                roonapi.play_media(output_id, ["Library", "Artists", artist], None, False)
            else:
                print("\nTo play an artist by name either specify the full name")
                print("or enough of a substring to provide a single match")

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
