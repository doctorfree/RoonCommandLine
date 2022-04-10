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
    zone_command = "group"
if args.zone:
    target_zone = config['ZONEGROUPS'][args.zone]
else:
    target_zone = config['ZONEGROUPS']['Group_1']

group_zones = target_zone.split(",")
for i in range(len(group_zones)):
    group_zones[i] = group_zones[i].strip()

version = config['DEFAULT']['RoonCommandLineVersion']
release = config['DEFAULT']['RoonCommandLineRelease']
fullver = version + "-" + release

from roonapi import RoonApi
appinfo = {
    "extension_id": "roon_command_line",
    "display_name": "Python library for Roon",
    "display_version": fullver,
    "publisher": "RoonCommandLine",
    "email": "roon@ronrecord.com",
    "website": "https://gitlab.com/doctorfree/RoonCommandLine",
}

# Can be None if you don't yet have a token
if path.exists(tokenfile):
    token = open(tokenfile).read()
else:
    token = "None"

roonapi = RoonApi(appinfo, token, server, port)

# get target zone output_id
outputs = roonapi.outputs

output_ids = []
output_names = []
zone_name = None
# get the first zone in this grouping
for (k, v) in outputs.items():
    if v["display_name"] == group_zones[0]:
        zone_name = v["display_name"]
        output_ids.append(k)
        output_names.append(zone_name)

if zone_name is None:
    err = "Unable to locate zone name " + group_zones[0]
    sys.exit(err)
else:
    # get the other zones in this grouping
    for (k, v) in outputs.items():
        if v["display_name"] in group_zones[1:]:
            zone_name = v["display_name"]
            output_ids.append(k)
            output_names.append(zone_name)
    if zone_command == "ungroup":
        print("Ungrouping zones:", output_names)
        roonapi.ungroup_outputs(output_ids)
    else:
        print("Grouping zones:", output_names)
        roonapi.group_outputs(output_ids)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
