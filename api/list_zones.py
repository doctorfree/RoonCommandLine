import argparse
import configparser
from os import path
from roonapi import RoonApi

config = configparser.ConfigParser()
config.read('/usr/local/Roon/etc/roon_api.ini')

# Set to IP address of your Roon Core
server = config['DEFAULT']['RoonCoreIP']
# Set to Port of your Roon Core
port = config['DEFAULT']['RoonCorePort']
# Name of the file that holds a Roon API token
tokenfile = config['DEFAULT']['TokenFileName']

parser = argparse.ArgumentParser()
parser.add_argument("-g", "--get",
                    help="Get a comma separated list of zones",
                    action="store_true")
parser.add_argument("-i", "--info", help="Get zone info", action="store_true")
parser.add_argument(
    "-q",
    "--quiet",
    default=False,
    action="store_true",
    help="list zones without other output"
)
parser.add_argument("-z", "--zone", help="Zone selection")
args = parser.parse_args()

if args.zone:
    searchterm = args.zone
else:
    searchterm = config['DEFAULT']['DefaultZone']
if args.quiet:
    verbose = False
else:
    verbose = True

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

zones = roonapi.zones
outputs = roonapi.outputs

zonelist = ""
zone_number = 1

for (k, v) in outputs.items():
    output_id = k
    zone_name = v["display_name"]
    zone_with_names = []
    if args.info:
        zone_with_ids = v["can_group_with_output_ids"]
        for zone_with_id in zone_with_ids:
            if (v["output_id"] == zone_with_id):
                continue
            for (oid, vid) in outputs.items():
                if (oid == zone_with_id):
                    zone_with_names.append(vid["display_name"])
                    break
    is_grouped = roonapi.is_grouped(output_id)
    is_group_main = roonapi.is_group_main(output_id)
    grouped_zone_names = roonapi.grouped_zone_names(output_id)
    if grouped_zone_names is None:
        grouped_zone_names = ""
    if (searchterm == "__all__" or searchterm in zone_name):
        if args.get:
            if args.info:
                if (searchterm == "__all__"):
                    print(zone_name + ': ' + ','.join(zone_with_names))
                else:
                    print(','.join(zone_with_names))
            else:
                zonelist = zonelist + zone_name + ', '
        else:
            if is_grouped:
                if verbose:
                    print(
                        "Zone",
                        str(zone_number) + ":",
                        '\033[1m' + zone_name + '\033[0m',
                        "\n\tGrouped zone names:",
                        '\033[1m',
                        grouped_zone_names,
                        '\033[0m',
                    )
                else:
                    print(zone_name)
            else:
                if verbose:
                    print(
                        "Zone",
                        str(zone_number) + ":",
                        '\033[1m' + zone_name + '\033[0m',
                    )
                else:
                    print(zone_name)
            if args.info:
                print(
                    "\tCan group with:",
                    '\033[1m',
                    zone_with_names,
                    '\033[0m'
                )
            if is_group_main:
                if verbose:
                    print("\tThis is the group main zone")
        zone_number += 1

if args.get:
    if not (args.info):
        zonelist = "".join(zonelist.rsplit(", ", 1))
        print(zonelist)
