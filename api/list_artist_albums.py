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
parser.add_argument("-A", "--album", help="album search term")
parser.add_argument("-a", "--artist", help="artist search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.album:
    albumsearch = args.album
else:
    albumsearch = config['DEFAULT']['DefaultAlbum']
if args.artist:
    artistsearch = args.artist
else:
    artistsearch = config['DEFAULT']['DefaultArtist']
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
    sys.exit("No zone found matching", target_zone)

# List matching artists
artists = roonapi.list_media(output_id, ["Library", "Artists", artistsearch])

if artists:
    for artist in artists:
        # List matching albums
        albums = roonapi.list_media(output_id, ["Library", "Artists", artist, albumsearch])
        if albums:
            if "Play Artist" in albums:
                albums.remove("Play Artist")
            if albumsearch == "__all__":
                print("\nAlbums by artist", artist, ":\n")
            else:
                print("\nAlbums by artist", artist, "with", albumsearch, "in title", ":\n")
            print(*albums, sep = "\n")
else:
    print("No artists found matching ", artistsearch)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
