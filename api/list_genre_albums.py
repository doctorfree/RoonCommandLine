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
parser.add_argument("-a", "--album", help="album search term")
parser.add_argument("-g", "--genre", help="genre search term")
parser.add_argument("-X", "--exalbum", help="album exclude search term")
parser.add_argument("-x", "--exgenre", help="genre exclude search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.album:
    albumsearch = args.album
else:
    albumsearch = config['DEFAULT']['DefaultAlbum']
if args.genre:
    genresearch = args.genre
else:
    genresearch = config['DEFAULT']['DefaultGenre']
if args.exalbum:
    exalbumsearch = args.exalbum
else:
    exalbumsearch = None
if args.exgenre:
    exgenresearch = args.exgenre
else:
    exgenresearch = None
if args.zone:
    target_zone = args.zone
else:
    target_zone = config['DEFAULT']['DefaultZone']

from roonapi import RoonApi
appinfo = {
    "extension_id": "roon_command_line",
    "display_name": "Python library for Roon",
    "display_version": "2.0.4",
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

# List matching genres
genres = roonapi.list_media(output_id, ["Genres", genresearch])

if genres:
    album = None
    for genre in genres:
        if exgenresearch is not None:
          if exgenresearch in genre:
            continue
        # List matching albums
        albums = roonapi.list_media(output_id, ["Genres", genre, "Albums", albumsearch])
        if exalbumsearch is not None and albums:
            albums = [chkalbum for chkalbum in albums if not exalbumsearch in chkalbum]
        if albums:
            album = albums[0]
            if albumsearch == "__all__":
                print("\nAlbums in genre", genre, ":\n")
            else:
                print("\nAlbums in", genre, "genre with", albumsearch, "in name", ":\n")
            print(*albums, sep = "\n")
    if album is None:
        print("No albums found matching", albumsearch)
else:
    print("No genres found matching ", genresearch)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
