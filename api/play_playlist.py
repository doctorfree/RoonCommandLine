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
parser.add_argument("-p", "--playlist", help="playlist selection")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.playlist:
    playlist = args.playlist
else:
    playlist = config['DEFAULT']['DefaultPlaylist']
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

# Play playlist
items = roonapi.play_media(output_id, ["Playlists", playlist])

if items:
    print("Found playlist:", *items, sep = "\n")
else:
    print("\nSearching for partial matches")
    playlists = roonapi.list_media(output_id, ["Playlists", playlist])
    print("\nPlaylist titles partially matching", playlist, ":\n")
    print(*playlists, sep = "\n")
    if len(playlists) == 1:
        playlist = playlists[0]
        roonapi.play_media(output_id, ["Playlists", playlist])
    else:
        print("\nTo play a playlist by name either specify the full name")
        print("or enough of a substring to provide a single match")

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
