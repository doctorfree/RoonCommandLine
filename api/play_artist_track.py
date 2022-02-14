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
parser.add_argument("-t", "--track", help="track search term")
parser.add_argument("-a", "--artist", help="artist search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.track:
    tracksearch = args.track
else:
    tracksearch = "__all__"
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
    err = "No zone found matching " + target_zone
    sys.exit(err)
else:
    # List matching artists
    artists = roonapi.list_media(output_id, ["Library", "Artists", artistsearch])
    if artists:
      track = None
      for artist in artists:
        if track is None:
          # Search through this artist's albums for specified track
          albums = roonapi.list_media(output_id, ["Library", "Artists", artist, "__all__"])
          if albums:
            for album in albums:
              if track is None:
                # List matching tracks
                tracks = roonapi.list_media(output_id, ["Library", "Artists", artist, album, tracksearch])
                if len(tracks) >= 1:
                  track = tracks[0]
                  print("Playing track title", track, "on album", album, "by artist", artist)
                  roonapi.play_media(output_id, ["Library", "Artists", artist, album, track], None, False)
    else:
        print("No artists found matching ", artistsearch)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
