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
parser.add_argument("-p", "--playlist", help="playlist selection")
parser.add_argument("-x", "--explaylist", help="playlist exclude search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.playlist:
    playlistsearch = args.playlist
else:
    playlistsearch = config['DEFAULT']['DefaultPlaylist']
if args.explaylist:
    explaylistsearch = args.explaylist
else:
    explaylistsearch = None
if args.zone:
    target_zone = args.zone
else:
    target_zone = config['DEFAULT']['DefaultZone']

from roonapi import RoonApi
appinfo = {
    "extension_id": "roon_command_line",
    "display_name": "Python library for Roon",
    "display_version": "2.0.3",
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
    playlist = None
    # List matching playlists from Library
    playlists = roonapi.list_media(output_id, ["Playlists", playlistsearch])
    # Filter out excluded playlist titles
    if explaylistsearch is not None and playlists:
        playlists = [chk for chk in playlists if not explaylistsearch in chk]
    if playlists:
        # Play playlist from Library
        playlist = playlists[0]
        print("Playing playlist title", playlist)
        roonapi.play_media(output_id, ["Playlists", playlist], None, False)
        if len(playlists) > 1:
            print("\nPlaylist titles partially matching", playlistsearch, ":\n")
            print(*playlists, sep = "\n")
            print("\nTo play another playlist with this title either specify the")
            print("full title or enough of a substring to provide a single match\n")
    if playlist is None:
        print("No playlists found matching", playlistsearch)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
