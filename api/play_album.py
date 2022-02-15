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
parser.add_argument("-a", "--album", help="album selection")
parser.add_argument("-X", "--exalbum", help="album exclude search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.album:
    albumsearch = args.album
else:
    albumsearch = config['DEFAULT']['DefaultAlbum']
if args.exalbum:
    exalbumsearch = args.exalbum
else:
    exalbumsearch = None
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
    album = None
    # List matching albums from Library
    albums = roonapi.list_media(output_id, ["Library", "Albums", albumsearch])
    # Filter out excluded album titles
    if exalbumsearch is not None and len(albums) > 0:
        for chkalbum in albums:
            if exalbumsearch in chkalbum:
                albums.remove(chkalbum)
    if len(albums) > 0:
        # Play album from Library
        album = albums[0]
        print("Playing album title", album)
        roonapi.play_media(output_id, ["Library", "Albums", album], None, False)
        if len(albums) > 1:
            print("\nAlbum titles partially matching", albumsearch, ":\n")
            print(*albums, sep = "\n")
            print("\nTo play another album with this title either specify the")
            print("full title or enough of a substring to provide a single match\n")
    if album is None:
        print("No albums found matching", albumsearch)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
