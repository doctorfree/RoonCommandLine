import argparse
import os.path
from os import path

# Set to IP address of your Roon Core
server = "10.0.1.81"
# Name of the file that holds a Roon API token
tokenfile = "roontoken.txt"

parser = argparse.ArgumentParser()
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.zone:
    target_zone = args.zone
else:
    target_zone = "Living Room"

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

# get target zone output_id
zones = roonapi.zones
output_id = [
    output["zone_id"]
    for output in zones.values()
    if output["display_name"] == target_zone
][0]

# Play next track
roonapi.playback_control(output_id, "next")

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
