import argparse
import configparser
from os import path
import sys
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
parser.add_argument("-f", "--source", help="from zone")
parser.add_argument("-t", "--to", help="to zone")
args = parser.parse_args()

if args.source:
    fromzone = args.source
else:
    fromzone = config['DEFAULT']['DefaultZone']
if args.to:
    tozone = args.to
else:
    tozone = config['DEFAULT']['DefaultZone']

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

# get to and from zone output_ids
outputs = roonapi.outputs

from_output_id = None
to_output_id = None
for (k, v) in outputs.items():
    if fromzone in v["display_name"]:
        from_output_id = k
    if tozone in v["display_name"]:
        to_output_id = k

if from_output_id is None:
    err = "No zone found matching " + fromzone
    sys.exit(err)

if to_output_id is None:
    err = "No zone found matching " + tozone
    sys.exit(err)
else:
    # Transfer zones
    print("Transfering from zone", fromzone, "to zone", tozone)
    roonapi.transfer_zone(from_output_id, to_output_id)
