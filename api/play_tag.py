import argparse
import configparser
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
parser.add_argument("-t", "--tag", help="tag selection")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.tag:
    tag = args.tag
else:
    tag = config['DEFAULT']['DefaultTag']
if args.zone:
    target_zone = args.zone
else:
    target_zone = config['DEFAULT']['DefaultZone']

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

output_id = None
for (k, v) in outputs.items():
    if target_zone in v["display_name"]:
        output_id = k

if output_id is None:
    err = "No zone found matching " + target_zone
    sys.exit(err)
else:
    # Play tag (not yet working)
    tags = roonapi.list_media(output_id, ["Library", "Tags", tag])
    if tags:
        print("\nTags matching", tag, ":\n")
        print(*tags, sep = "\n")
        if len(tags) == 1:
            tag = tags[0]
            print("\nPlaying media by tag is not yet working. Found tag for", tag, "\n")
            # Need to identify the media here, somehow use tag to search for media. How?
            roonapi.play_media(output_id, ["Library", "Tags", tag], None, False)
        else:
            print("\nTo play a tag by name either specify the full name")
            print("or enough of a substring to provide a single match")
    else:
        print("\nNo tags matching", tag, "\n")

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(str(roonapi.token))
