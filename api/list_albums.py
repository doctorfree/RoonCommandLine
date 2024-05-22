import argparse
import configparser
from os import path
import signal
import sys
from roonapi import RoonApi

def signal_handler(sig, frame):
    sys.exit(0)
signal.signal(signal.SIGINT, signal_handler)

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
parser.add_argument(
    "-q",
    "--quiet",
    default=False,
    action="store_true",
    help="list albums without other output"
)
parser.add_argument("-t", "--track", help="track search term")
parser.add_argument("-x", "--exalbum", help="album exclude search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.album:
    albumsearch = args.album
else:
    albumsearch = "__all__"
if args.quiet:
    verbose = False
else:
    verbose = True
if args.track:
    tracksearch = args.track
else:
    tracksearch = None
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

# List matching albums
albums = roonapi.list_media(output_id, ["Library", "Albums", albumsearch])
if exalbumsearch is not None and albums:
    albums = [chkalbum for chkalbum in albums if exalbumsearch not in chkalbum]
if albums:
    if "Play album" in albums:
        albums.remove("Play album")
    if tracksearch is not None:
        found = None
        for album in albums:
            # List matching tracks
            tracks = roonapi.list_media(output_id,
                                        ["Library", "Albums",
                                         album, tracksearch])
            if "Play Album" in tracks:
                tracks.remove("Play Album")
            if tracks:
                found = tracks[0]
            else:
                albums.remove(album)
        if found is None:
            print("No tracks found matching", tracksearch)
if albums:
    if verbose:
        if tracksearch is None:
            if albumsearch == "__all__":
                print("\nAll Albums in Library:\n")
            else:
                print("\nAlbums with", albumsearch, "in title", ":\n")
        else:
            if albumsearch == "__all__":
                print("\nAlbums in Library containing a track matching",
                      tracksearch, ":\n")
            else:
                print("\nAlbums containing a track matching", tracksearch,
                      "with", albumsearch, "in title", ":\n")
    print(*albums, sep="\n")
else:
    if verbose:
        print("No albums found matching ", albumsearch)
