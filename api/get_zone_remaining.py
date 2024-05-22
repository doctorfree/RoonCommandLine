import argparse
import configparser
from os import path
import signal
import sys
from roonapi import RoonApi
#
# Get the volume of a zone's outputs
#

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
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.zone:
    target_zone = args.zone
else:
    target_zone = config['DEFAULT']['DefaultZone']

zone_name = target_zone

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
        zone_name = v["display_name"]
        output_id = k

remaining = None
state = "Unknown"
if output_id is None:
    err = "No zone found matching " + target_zone
    sys.exit(err)
else:
    zone = roonapi.zone_by_output_id(output_id)
    if zone is not None:
        if "state" in zone:
            state = zone["state"]
        if "length" in zone["now_playing"]:
            length = zone["now_playing"]["length"]
        else:
            length = None
        if "seek_position" in zone["now_playing"]:
            position = zone["now_playing"]["seek_position"]
        else:
            position = None
        if length is not None:
            if position is not None:
                remaining = length - position

    if remaining is not None:
        print(zone_name + ": Time remaining = " + str(remaining) +
              " seconds, State = " + state)
    else:
        print(zone_name + ": State = " + state)
