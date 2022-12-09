import argparse
import configparser
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

version = config['DEFAULT']['RoonCommandLineVersion']
release = config['DEFAULT']['RoonCommandLineRelease']
fullver = version + "-" + release

from roonapi import RoonApi
appinfo = {
    "extension_id": "roon_command_line",
    "display_name": "Python library for Roon",
    "display_version": fullver,
    "publisher": "RoonCommandLine",
    "email": "roon@ronrecord.com",
    "website": "https://gitlab.com/doctorfree/RoonCommandLine",
}

# Can be None if you don't yet have a token
if path.exists(tokenfile):
    token = open(tokenfile).read()
else:
    token = "None"

roonapi = RoonApi(appinfo, token, server, port)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(str(roonapi.token))

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
            albums = [chk for chk in albums if not exalbumsearch in chk]
        if albums:
            album = albums[0]
            print("Playing album title", album, "in", genre, "genre")
            roonapi.play_media(output_id, ["Genres", genre, "Albums", album], None, False)
            if len(albums) > 1:
              print("\nAlbum titles in", genre, "genre matching", albumsearch, ":\n")
              print(*albums, sep = "\n")
              print("\nTo play another album in this genre by name either specify")
              print("the full name or enough of a substring to provide a single match\n")
            break
      if album is None:
        print("No albums found matching", albumsearch)
    else:
      print("No genres found matching ", genresearch)
