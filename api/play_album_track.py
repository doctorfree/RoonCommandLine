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
parser.add_argument("-t", "--track", help="track search term")
parser.add_argument("-a", "--album", help="album search term")
parser.add_argument("-X", "--extrack", help="track exclude search term")
parser.add_argument("-x", "--exalbum", help="album exclude search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.track:
    tracksearch = args.track
else:
    tracksearch = "__all__"
if args.album:
    albumsearch = args.album
else:
    albumsearch = "__all__"
if args.extrack:
    extracksearch = args.extrack
else:
    extracksearch = None
if args.exalbum:
    exalbumsearch = args.exalbum
else:
    exalbumsearch = None
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
else:
    album = None
    # List matching albums
    albums = roonapi.list_media(output_id,
                                 ["Library",
                                  "Albums",
                                  albumsearch])
    # Filter out excluded album titles
    if exalbumsearch is not None and albums:
        albums = [chk for chk in albums if exalbumsearch not in chk]
    if albums:
        track = None
        for album in albums:
            # List matching tracks
            tracks = roonapi.list_media(output_id,
                                        ["Library",
                                         "Albums",
                                         album, tracksearch])
            if extracksearch is not None and tracks:
                tracks = [
                    chk for chk in tracks if extracksearch not in chk]
            if tracks:
                track = tracks[0]
                print("Playing track title", track, "on album", album)
                roonapi.play_media(output_id, ["Library", "Albums",
                                   album, track], None, False)
                if len(tracks) > 1:
                    print("\nTrack titles on", album,
                          "matching", tracksearch, ":\n")
                    print(*tracks, sep="\n")
                    print("\nTo play another track on this album by title either specify")
                    print("the full title or enough of a substring to provide a single match\n")
                break
            if track is not None:
                break
        if track is None:
            print("No tracks found matching", tracksearch)
    else:
        print("No albums found matching ", albumsearch)
