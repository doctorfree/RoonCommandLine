import argparse
import configparser
import os.path
from os import path

config = configparser.ConfigParser()
config.read('/usr/local/Roon/etc/roon_api.ini')

# Set to IP address of your Roon Core
server = config['DEFAULT']['RoonCoreIP']
# Name of the file that holds a Roon API token
tokenfile = config['DEFAULT']['TokenFileName']

parser = argparse.ArgumentParser()
parser.add_argument("-g", "--genre", help="genre selection")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.genre:
    genre = args.genre
else:
    genre = config['DEFAULT']['DefaultGenre']
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
outputs = roonapi.outputs

output_id = None
for (k, v) in outputs.items():
    if target_zone in v["display_name"]:
        output_id = k

if output_id is None:
    print("No zone found matching", target_zone)
    exit()

# Play genre
found = roonapi.play_media(output_id, ["Genres", genre], None, False)

if found:
    print("Found media for genre search term:", genre)
else:
    genres = roonapi.list_media(output_id, ["Genres", genre])
    if len(genres) == 0:
        print("\nNo genre name partially matching", genre, "\n")
    else:
        print("\nGenres partially matching", genre, ":\n")
        print(*genres, sep = "\n")
        if len(genres) == 1:
            genre = genres[0]
            roonapi.play_media(output_id, ["Genres", genre], None, False)
        else:
            print("\nTo play a genre by name either specify the full name")
            print("or enough of a substring to provide a single match")

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
