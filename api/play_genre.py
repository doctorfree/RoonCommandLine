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
parser.add_argument("-g", "--genre", help="genre selection")
parser.add_argument("-x", "--exgenre", help="genre exclude search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.genre:
    genresearch = args.genre
else:
    genresearch = config['DEFAULT']['DefaultGenre']
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
    genre = None
    # List matching genres from Library
    genres = roonapi.list_media(output_id, ["Genres", genresearch])
    # Filter out excluded genre titles
    if exgenresearch is not None and genres:
        genres = [chk for chk in genres if exgenresearch not in chk]
    if genres:
        # Play genre from Library
        genre = genres[0]
        print("Playing genre title", genre)
        roonapi.play_media(output_id, ["Genres", genre], None, False)
        if len(genres) > 1:
            print("\nGenre titles partially matching", genresearch, ":\n")
            print(*genres, sep="\n")
            print("\nTo play another genre with this title either specify the")
            print("full title or enough of a substring to provide a single match\n")
    if genre is None:
        print("No genres found matching", genresearch)
