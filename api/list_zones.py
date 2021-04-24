import argparse
import configparser
import os.path
from os import path

config = configparser.ConfigParser()
config.read('roon_api.ini')

# Set to IP address of your Roon Core
server = config['DEFAULT']['RoonCoreIP']
# Name of the file that holds a Roon API token
tokenfile = config['DEFAULT']['TokenFileName']

parser = argparse.ArgumentParser()
parser.add_argument("-z", "--zone", help="zone selection")
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

zones = roonapi.zones
outputs = roonapi.outputs
zone_number = 1

for (k, v) in outputs.items():
    zone_id = v["zone_id"]
    output_id = k
    zone_name = v["display_name"]
    is_grouped = roonapi.is_grouped(output_id)
    is_group_main = roonapi.is_group_main(output_id)
    group_main_zone = roonapi.group_main_zone(output_id)
    group_main_zone_name = roonapi.group_main_zone_name(output_id)
    if group_main_zone is None:
        group_main_zone_name_grouped = ""
    else:
        group_main_zone_name_grouped = zones[group_main_zone]["display_name"]
    if (searchterm == "all" or searchterm in zone_name):
        if is_grouped:
            print(
                "Zone",
                str(zone_number) + ":",
                '\033[1m' + zone_name + '\033[0m',
                "\n\tGrouped in zone:",
                '\033[1m' + group_main_zone_name_grouped + '\033[0m',
                "\n\tGroup main zone:",
                '\033[1m' + group_main_zone_name + '\033[0m',
            )
        else:
            print(
                "Zone",
                str(zone_number) + ":",
                '\033[1m' + zone_name + '\033[0m',
            )
        zone_number += 1

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
