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
parser.add_argument("-c", "--composer", help="composer selection")
parser.add_argument("-x", "--excomposer", help="composer exclude search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.composer:
    composersearch = args.composer
else:
    composersearch = config['DEFAULT']['DefaultComposer']
if args.excomposer:
    excomposersearch = args.excomposer
else:
    excomposersearch = None
if args.zone:
    target_zone = args.zone
else:
    target_zone = config['DEFAULT']['DefaultZone']

version = config['DEFAULT']['RoonCommandLineVersion']
release = config['DEFAULT']['RoonCommandLineRelease']
fullver = version + "-" + release

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

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(str(roonapi.token))

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
    composer = None
    # List matching composers from Library
    composers = roonapi.list_media(output_id,
                                   ["Library",
                                    "Composers", composersearch])
    # Filter out excluded composer names
    if excomposersearch is not None and composers:
        composers = [chk for chk in composers if excomposersearch not in chk]
    if composers:
        # Play composer from Library
        composer = composers[0]
        print("Playing composer name", composer)
        roonapi.play_media(output_id,
                           ["Library", "Composers", composer],
                           None, False)
        if len(composers) > 1:
            print("\nComposer names partially matching", composersearch, ":\n")
            print(*composers, sep="\n")
            print("\nTo play a composer with this name either specify the")
            print("full name or enough of a substring for a single match\n")
    if composer is None:
        print("No composers found matching", composersearch)
