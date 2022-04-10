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
parser.add_argument("-X", "--extrack", help="track exclude search term")
parser.add_argument("-x", "--exartist", help="artist exclude search term")
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
if args.extrack:
    extracksearch = args.extrack
else:
    extracksearch = None
if args.exartist:
    exartistsearch = args.exartist
else:
    exartistsearch = None
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
        if exartistsearch is not None:
          if exartistsearch in artist:
            continue
        # Search through this artist's albums for specified track
        albums = roonapi.list_media(output_id, ["Library", "Artists", artist, "__all__"])
        if albums:
          for album in albums:
            # List matching tracks
            tracks = roonapi.list_media(output_id, ["Library", "Artists", artist, album, tracksearch])
            if extracksearch is not None and tracks:
              tracks = [chk for chk in tracks if not extracksearch in chk]
            if tracks:
              track = tracks[0]
              print("Playing track title", track, "on album", album, "by artist", artist)
              roonapi.play_media(output_id, ["Library", "Artists", artist, album, track], None, False)
              if len(tracks) > 1:
                print("\nTrack titles by", artist, "artist matching", tracksearch, ":\n")
                print(*tracks, sep = "\n")
                print("\nTo play another track by this artist by title either specify")
                print("the full title or enough of a substring to provide a single match\n")
              break
        if track is not None:
          break
      if track is None:
        print("No tracks found matching", tracksearch)
    else:
      print("No artists found matching ", artistsearch)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
