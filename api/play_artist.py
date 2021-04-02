import argparse
import configparser
import os.path
from os import path

config = configparser.ConfigParser()
config.read('roon_api.ini')

# Set to IP address of your Roon Core
server = config['DEFAULT']['RoonCoreIP']
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
    "extension_id": "python_roon_test",
    "display_name": "Python library for Roon",
    "display_version": "1.0.0",
    "publisher": "gregd",
    "email": "mygreat@emailaddress.com",
}

# Can be None if you don't yet have a token
if path.exists(tokenfile):
    token = open(tokenfile).read()
else:
    token = "None"

roonapi = RoonApi(appinfo, token, server)

# get target zone output_id
zones = roonapi.zones
output_id = [
    output["zone_id"]
    for output in zones.values()
    if target_zone in output["display_name"]
][0]

# Play artist from Library
items = roonapi.play_media(output_id, ["Library", "Artists", artist])

if items:
    print("Found artist:", *items, sep = "\n")
else:
    print("\nSearching for partial matches")
    artists = roonapi.list_media(output_id, ["Library", "Artists", artist])
    print("\nArtist names partially matching", artist, ":\n")
    print(*artists, sep = "\n")
    if len(artists) == 1:
        artist = artists[0]
        roonapi.play_media(output_id, ["Library", "Artists", artist])
    else:
        print("\nTo play an artist by name either specify the full name")
        print("or enough of a substring to provide a single match")

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
