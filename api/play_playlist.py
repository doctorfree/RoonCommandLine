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
config.read(f"/usr/local/Roon/etc/roon_api.ini")

# Set to IP address of your Roon Core
server = config["DEFAULT"]["RoonCoreIP"]
# Set to Port of your Roon Core
port = config["DEFAULT"]["RoonCorePort"]
# Name of the file that holds a Roon API token
tokenfile = config["DEFAULT"]["TokenFileName"]

parser = argparse.ArgumentParser()
parser.add_argument("-p", "--playlist", help="playlist selection")
parser.add_argument(
    "-s",
    "--shuffled",
    default=False,
    action="store_true",
    help="play playlist in shuffled order",
)
parser.add_argument("-x", "--explaylist", help="playlist exclude search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.playlist:
    playlistsearch = args.playlist
else:
    playlistsearch = config["DEFAULT"]["DefaultPlaylist"]
if args.shuffled:
    shuffled = True
else:
    shuffled = False
if args.explaylist:
    explaylistsearch = args.explaylist
else:
    explaylistsearch = None
if args.zone:
    target_zone = args.zone
else:
    target_zone = config["DEFAULT"]["DefaultZone"]

version = config["DEFAULT"]["RoonCommandLineVersion"]
release = config["DEFAULT"]["RoonCommandLineRelease"]
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
for k, v in outputs.items():
    if target_zone in v["display_name"]:
        output_id = k

if output_id is None:
    err = "No zone found matching " + target_zone
    sys.exit(err)
else:
    playlist = None
    # List matching playlists from Library
    playlists = roonapi.list_media(output_id, ["Playlists", playlistsearch])
    # Filter out excluded playlist titles
    if explaylistsearch is not None and playlists:
        playlists = [chk for chk in playlists if explaylistsearch not in chk]
    if playlists:
        # Play playlist from Library
        playlist = playlists[0]
        print("Playing playlist title", playlist)
        if shuffled:
            roonapi.play_media(output_id, ["Playlists", playlist], "Shuffle", False)
        else:
            roonapi.play_media(output_id, ["Playlists", playlist], None, False)
        if len(playlists) > 1:
            print("\nPlaylist titles partially matching", playlistsearch, ":\n")
            print(*playlists, sep="\n")
            print("\nTo play another playlist with this title either specify the")
            print("full title or enough of a substring to provide a single match\n")
    if playlist is None:
        print("No playlists found matching", playlistsearch)
