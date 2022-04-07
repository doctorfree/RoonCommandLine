import argparse
import configparser
from os import path
import sys
#
# Change the volume of an output
#
# For convenience you can always just give the new volume level as percentage
#
# The new volume value, or the increment value or step (as percentage)
# Method: How to interpret the volume ('absolute'|'relative'|'relative_step')

config = configparser.ConfigParser()
config.read('/usr/local/Roon/etc/roon_api.ini')

# Set to IP address of your Roon Core
server = config['DEFAULT']['RoonCoreIP']
# Set to Port of your Roon Core
port = config['DEFAULT']['RoonCorePort']
# Name of the file that holds a Roon API token
tokenfile = config['DEFAULT']['TokenFileName']

parser = argparse.ArgumentParser()
parser.add_argument("-g", "--grouped", default=False, action='store_true', help="apply volume level to all zones in a group")
parser.add_argument("-r", "--relative", default=False, action='store_true', help="relative volume level")
parser.add_argument("-s", "--step", default=False, action='store_true', help="relative step volume level")
parser.add_argument("-v", "--volume", help="desired volume level")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.grouped:
    grouped = True
else:
    grouped = False
if args.relative:
    relative = True
else:
    relative = False
if args.step:
    step = True
else:
    step = False
if args.volume:
    zone_volume = args.volume
else:
    sys.exit("Volume argument required")
if args.zone:
    target_zone = args.zone
else:
    target_zone = config['DEFAULT']['DefaultZone']

# If given an absolute volume level, force it in [0, 100]
if not step and not relative:
    if float(zone_volume) > 100.0:
        zone_volume = 100
    if float(zone_volume) < 0.0:
        zone_volume = 0

zone_name = target_zone

from roonapi import RoonApi
appinfo = {
    "extension_id": "roon_command_line",
    "display_name": "Python library for Roon",
    "display_version": "2.0.4",
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

if output_id is None:
    err = "No zone found matching " + target_zone
    sys.exit(err)
else:
    is_grouped = roonapi.is_grouped(output_id)
    if grouped and is_grouped:
      # Apply the volume level to all zones in a zone grouping
      grouped_zone_names = roonapi.grouped_zone_names(output_id)
      if grouped_zone_names is not None:
        for zone_name in grouped_zone_names:
          for (k, v) in outputs.items():
            if zone_name in v["display_name"]:
              output_id = k
              if step:
                roonapi.change_volume(output_id, zone_volume, method="relative_step")
              elif relative:
                roonapi.change_volume(output_id, zone_volume, method="relative")
              else:
                roonapi.change_volume(output_id, zone_volume)
    else:
      # Send the volume to the specified zone with the specified method
      if step:
        roonapi.change_volume(output_id, zone_volume, method="relative_step")
      elif relative:
        roonapi.change_volume(output_id, zone_volume, method="relative")
      else:
        roonapi.change_volume(output_id, zone_volume)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
