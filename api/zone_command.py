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
parser.add_argument("-c", "--command", help="command selection")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.command:
    zone_command = args.command
else:
    zone_command = "play"
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
        zone_name = v["display_name"]
        output_id = k

if zone_command == "verify":
    if output_id is None:
        print("")
    else:
        print(zone_name)
    sys.exit()
else:
    if output_id is None:
        err = "No zone found matching " + target_zone
        sys.exit(err)
    else:
        # Apply the mute/unmute command to all zones in a zone grouping
        if zone_command == "mute" or zone_command == "unmute":
          is_grouped = roonapi.is_grouped(output_id)
          if is_grouped:
            grouped_zone_names = roonapi.grouped_zone_names(output_id)
            if grouped_zone_names is not None:
              for zone_name in grouped_zone_names:
                for (k, v) in outputs.items():
                    if zone_name in v["display_name"]:
                        output_id = k
                        if zone_command == "mute":
                          roonapi.mute(output_id, True)
                        else:
                          roonapi.mute(output_id, False)
        else:
          # Send the command to the specified zone
          if zone_command == "mute":
            roonapi.mute(output_id, True)
          elif zone_command == "unmute":
            roonapi.mute(output_id, False)
          elif zone_command == "shuffle":
            roonapi.shuffle(output_id, True)
          elif zone_command == "unshuffle":
            roonapi.shuffle(output_id, False)
          elif zone_command == "repeat":
            roonapi.repeat(output_id, True)
          elif zone_command == "unrepeat":
            roonapi.repeat(output_id, False)
          else:
            roonapi.playback_control(output_id, zone_command)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
