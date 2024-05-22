import argparse
import configparser
from os import path
import signal
import sys
from roonapi import RoonApi
#
# Change the volume of an output
#
# For convenience you can always just give the new volume level as percentage
#
# The new volume value, or the increment value or step (as percentage)
# Method: How to interpret the volume ('absolute'|'relative'|'relative_step')

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
parser.add_argument("-g", "--grouped", default=False, action='store_true', help="apply volume level to all zones in a group")
parser.add_argument("-p", "--percentage", type=float, help="desired volume level percentage")
parser.add_argument("-r", "--relative", default=False, action='store_true', help="relative volume level")
parser.add_argument("-s", "--step", default=False, action='store_true', help="relative step volume level")
parser.add_argument("-v", "--volume", type=int, help="desired volume level")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

percent = False
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
    if args.percentage:
        zone_volume = args.percentage
        percent = True
    else:
        sys.exit("Volume argument required")
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
                            if percent:
                                roonapi.change_volume_percent(output_id,
                                                              zone_volume)
                            else:
                                roonapi.change_volume_raw(
                                    output_id,
                                    zone_volume,
                                    method="relative_step")
                        elif relative:
                            if percent:
                                roonapi.change_volume_percent(output_id,
                                                              zone_volume)
                            else:
                                roonapi.change_volume_raw(
                                    output_id,
                                    zone_volume, method="relative")
                        else:
                            if percent:
                                roonapi.set_volume_percent(output_id,
                                                           zone_volume)
                            else:
                                roonapi.change_volume_raw(output_id,
                                                          zone_volume)
    else:
        # Send the volume to the specified zone with the specified method
        if step:
            if percent:
                roonapi.change_volume_percent(output_id, zone_volume)
            else:
                roonapi.change_volume_raw(output_id, zone_volume,
                                          method="relative_step")
        elif relative:
            if percent:
                roonapi.change_volume_percent(output_id, zone_volume)
            else:
                roonapi.change_volume_raw(output_id, zone_volume,
                                          method="relative")
        else:
            if percent:
                roonapi.set_volume_percent(output_id, zone_volume)
            else:
                roonapi.change_volume_raw(output_id, zone_volume)
