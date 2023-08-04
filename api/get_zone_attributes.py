import argparse
import configparser
import json
from os import path
import sys
from roonapi import RoonApi
#
# Get the volume of a zone's outputs
#

config = configparser.ConfigParser()
config.read('/usr/local/Roon/etc/roon_api.ini')

# Set to IP address of your Roon Core
server = config['DEFAULT']['RoonCoreIP']
# Set to Port of your Roon Core
port = config['DEFAULT']['RoonCorePort']
# Name of the file that holds a Roon API token
tokenfile = config['DEFAULT']['TokenFileName']

parser = argparse.ArgumentParser()
parser.add_argument("-g", "--grouped", default=False, action='store_true',
                    help="return attributes for all zones in a grouped zone")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.zone:
    target_zone = args.zone
else:
    target_zone = config['DEFAULT']['DefaultZone']
if args.grouped:
    group = "true"
else:
    group = None

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
    result = []
    is_grouped = False
    if group is not None:
        is_grouped = roonapi.is_grouped(output_id)
    if is_grouped:
        # Get the attributes for all zones in a zone grouping
        grouped_zone_names = roonapi.grouped_zone_names(output_id)
        if grouped_zone_names is not None:
            for zone_name in grouped_zone_names:
                for (k, v) in outputs.items():
                    if zone_name in v["display_name"]:
                        result.append(v)
    else:
        # Get the attributes of the specified zone with the specified method
        for (k, v) in outputs.items():
            if zone_name in v["display_name"]:
                result.append(v)

    print(json.dumps(result))
