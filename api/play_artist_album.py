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
else:
    # List matching artists
    artists = roonapi.list_media(output_id, ["Library", "Artists", artistsearch])
    if artists:
      album = None
      for artist in artists:
        if album is None:
          # List matching albums
          albums = roonapi.list_media(output_id, ["Library", "Artists", artist, albumsearch])
          if len(albums) == 0:
            print("\nFor artist", artist, "no album titles matching", albumsearch, "\n")
          else:
            if len(albums) == 1:
              album = albums[0]
              print("Playing album title", album, "by artist", artist)
              roonapi.play_media(output_id, ["Library", "Artists", artist, album], None, False)
            else:
              print("\nAlbum titles by", artist, "artist matching", albumsearch, ":\n")
              print(*albums, sep = "\n")
              print("\nTo play an album by this artist by title either specify the full")
              print("title or enough of a substring to provide a single match\n")
    else:
        print("No artists found matching ", artistsearch)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
