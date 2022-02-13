import argparse
import configparser
import os.path
from os import path

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
    print("No zone found matching", target_zone)
    exit()

# List matching genres
genres = roonapi.list_media(output_id, ["Genres", genresearch])

if genres:
  artist = None
  for genre in genres:
    if artist is None:
      # List matching artists
      artists = roonapi.list_media(output_id, ["Genres", genre, "Artists", artistsearch])
      if len(artists) == 0:
        print("\nIn genre", genre, "no artist names partially matching", artistsearch, "\n")
      else:
        if len(artists) == 1:
          artist = artists[0]
          print("Playing artist name", artist, "in", genre, "genre")
          roonapi.play_media(output_id, ["Genres", genre, "Artists", artist], None, False)
        else:
          print("\nArtist names in", genre, "genre matching", artistsearch, ":\n")
          print(*artists, sep = "\n")
          print("\nTo play an artist in this genre by name either specify the full name")
          print("or enough of a substring to provide a single match\n")
else:
    print("No genres found matching ", genresearch)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
