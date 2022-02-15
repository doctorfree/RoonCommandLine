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
parser.add_argument("-x", "--exartist", help="artist exclude search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.artist:
    artistsearch = args.artist
else:
    artistsearch = config['DEFAULT']['DefaultArtist']
if args.exartist:
    exartistsearch = args.exartist
else:
    exartistsearch = None
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
    artist = None
    # List matching artists from Library
    artists = roonapi.list_media(output_id, ["Library", "Artists", artistsearch])
    # Filter out excluded artist names
    if exartistsearch is not None and len(artists) > 0:
        artists = [chk for chk in artists if not exartistsearch in chk]
    if len(artists) > 0:
        # Play artist from Library
        artist = artists[0]
        print("Playing artist name", artist)
        roonapi.play_media(output_id, ["Library", "Artists", artist], None, False)
        if len(artists) > 1:
            print("\nArtist names partially matching", artistsearch, ":\n")
            print(*artists, sep = "\n")
            print("\nTo play another artist with this name either specify the")
            print("full name or enough of a substring to provide a single match\n")
    if artist is None:
        print("No artists found matching", artistsearch)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
