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
parser.add_argument("-r", "--radio", help="radio selection")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.radio:
    radio = args.radio
else:
    radio = config['DEFAULT']['DefaultRadio']
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
    # Play live radio
    found = roonapi.play_media(output_id,
                               ["My Live Radio", radio],
                               None, False)
    if found:
        print("Found media for radio search term:", radio)
    else:
        stations = roonapi.list_media(output_id, ["My Live Radio", radio])
        if stations:
            print("\nRadio station names partially matching", radio, ":\n")
            print(*stations, sep="\n")
            if len(stations) == 1:
                radio = stations[0]
                roonapi.play_media(output_id,
                                   ["My Live Radio", radio],
                                   None, False)
            else:
                print("\nTo play a radio station by name either specify the full name")
                print("or enough of a substring to provide a single match")
        else:
            print("\nNo radio station name partially matching", radio, "\n")
