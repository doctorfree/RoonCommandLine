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

# Play live radio
found = roonapi.play_media(output_id, ["My Live Radio", radio], None, False)

if found:
    print("Found media for radio search term:", radio)
else:
    stations = roonapi.list_media(output_id, ["My Live Radio", radio])
    if len(stations) == 0:
        print("\nNo radio station name partially matching", radio, "\n")
    else:
        print("\nRadio station names partially matching", radio, ":\n")
        print(*stations, sep = "\n")
        if len(stations) == 1:
            radio = stations[0]
            roonapi.play_media(output_id, ["My Live Radio", radio], None, False)
        else:
            print("\nTo play a radio station by name either specify the full name")
            print("or enough of a substring to provide a single match")

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
