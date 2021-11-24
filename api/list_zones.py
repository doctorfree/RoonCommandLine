import argparse
import configparser
import os.path
from os import path

config = configparser.ConfigParser()
config.read('/usr/local/Roon/etc/roon_api.ini')

# Set to IP address of your Roon Core
server = config['DEFAULT']['RoonCoreIP']
# Name of the file that holds a Roon API token
tokenfile = config['DEFAULT']['TokenFileName']

parser = argparse.ArgumentParser()
parser.add_argument("-g", "--get", help="Get a comma separated list of zones", action="store_true")
parser.add_argument("-i", "--info", help="Get zone info", action="store_true")
parser.add_argument("-z", "--zone", help="Zone selection")
args = parser.parse_args()

if args.zone:
    searchterm = args.zone
else:
    searchterm = config['DEFAULT']['DefaultZone']

from roonapi import RoonApi
appinfo = {
    "extension_id": "python_roon_test",
    "display_name": "Python library for Roon",
    "display_version": "1.0.0",
    "publisher": "gregd",
    "email": "mygreat@emailaddress.com",
}

# Can be None if you don't yet have a token
if path.exists(tokenfile):
    token = open(tokenfile).read()
else:
    token = "None"

roonapi = RoonApi(appinfo, token, server)

zonelist = ""
outputs = roonapi.outputs
zone_number = 1

for (k, v) in outputs.items():
    zone_id = v["zone_id"]
    output_id = k
    zone_name = v["display_name"]
    if args.info:
        zone_with = v["can_group_with_output_ids"]
    is_grouped = roonapi.is_grouped(output_id)
    is_group_main = roonapi.is_group_main(output_id)
    grouped_zone_names = roonapi.grouped_zone_names(output_id)
    if grouped_zone_names is None:
        grouped_zone_names = ""
    if (searchterm == "all" or searchterm in zone_name):
        if args.get:
            zonelist = zonelist + zone_name + ', '
        else:
            if is_grouped:
                print(
                    "Zone",
                    str(zone_number) + ":",
                    '\033[1m' + zone_name + '\033[0m',
                    "\n\tGrouped zone names:",
                    '\033[1m',
                    grouped_zone_names,
                    '\033[0m',
                )
                if args.info:
                    print("Can group with: %s" % zone_with)
                if is_group_main:
                    print("\tThis is the group main zone")
            else:
                print(
                    "Zone",
                    str(zone_number) + ":",
                    '\033[1m' + zone_name + '\033[0m',
                )
        zone_number += 1

if args.get:
    zonelist = "".join(zonelist.rsplit(", ", 1))
    print(zonelist)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
