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
parser.add_argument("-a", "--album", help="album title")
parser.add_argument("-t", "--track", help="track title")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.album:
    albumtitle = args.album
else:
    print("\nAlbum title required. Exiting.\n")
    sys.exit(0)
if args.track:
    tracktitle = args.track
else:
    tracktitle = "__all__"
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

# Save the token for next time
with open(tokenfile, "w") as f:
    f.write(str(roonapi.token))

# Get target zone output_id
outputs = roonapi.outputs

output_id = None
for (k, v) in outputs.items():
    if target_zone in v["display_name"]:
        output_id = k

if output_id is None:
    err = "No zone found matching " + target_zone
    sys.exit(err)

roonapi.play_media(output_id, ["Library", "Albums", albumtitle, tracktitle], None, False)
