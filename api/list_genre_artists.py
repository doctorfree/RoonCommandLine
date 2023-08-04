import argparse
import configparser
from os import path
import sys
from roonapi import RoonApi

config = configparser.ConfigParser()
config.read('/usr/local/Roon/etc/roon_api.ini')

# Set to IP address of your Roon Core
server = config['DEFAULT']['RoonCoreIP']
# Set to Port of your Roon Core
port = config['DEFAULT']['RoonCorePort']
# Name of the file that holds a Roon API token
tokenfile = config['DEFAULT']['TokenFileName']

parser = argparse.ArgumentParser()
parser.add_argument("-a", "--artist", help="artist search term")
parser.add_argument("-g", "--genre", help="genre search term")
parser.add_argument("-X", "--exartist", help="artist exclude search term")
parser.add_argument("-x", "--exgenre", help="genre exclude search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.artist:
    artistsearch = args.artist
else:
    artistsearch = config['DEFAULT']['DefaultArtist']
if args.genre:
    genresearch = args.genre
else:
    genresearch = config['DEFAULT']['DefaultGenre']
if args.exartist:
    exartistsearch = args.exartist
else:
    exartistsearch = None
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

appinfo = {
    "extension_id": "roon_command_line",
    "display_name": "Python library for Roon",
    "display_version": fullver,
    "publisher": "RoonCommandLine",
    "email": "roon@ronrecord.com",
    "website": "https://github.com/doctorfree/RoonCommandLine",
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

# List matching genres
genres = roonapi.list_media(output_id, ["Genres", genresearch])

if genres:
    artist = None
    for genre in genres:
        if exgenresearch is not None:
            if exgenresearch in genre:
                continue
        # List matching artists
        artists = roonapi.list_media(output_id,
                                     ["Genres", genre,
                                      "Artists", artistsearch])
        if exartistsearch is not None and artists:
            artists = [chk for chk in artists if exartistsearch not in chk]
        if artists:
            artist = artists[0]
            if artistsearch == "__all__":
                print("\nArtists in genre", genre, ":\n")
            else:
                print("\nArtists in", genre, "genre with",
                      artistsearch, "in name", ":\n")
            print(*artists, sep="\n")
    if artist is None:
        print("No artists found matching", artistsearch)
else:
    print("No genres found matching ", genresearch)
