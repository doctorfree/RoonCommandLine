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
parser.add_argument("-c", "--composer", help="composer search term")
parser.add_argument(
    "-q",
    "--quiet",
    default=False,
    action="store_true",
    help="list composers without other output"
)
parser.add_argument("-x", "--excomposer", help="composer exclude search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.composer:
    composersearch = args.composer
else:
    composersearch = config['DEFAULT']['DefaultComposer']
if args.quiet:
    verbose = False
else:
    verbose = True
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
        output_id = k

if output_id is None:
    err = "No zone found matching " + target_zone
    sys.exit(err)

# List matching composers
composers = roonapi.list_media(output_id,
                               ["Library",
                                "Composers",
                                composersearch])
if excomposersearch is not None and composers:
    composers = [cmpsr for cmpsr in composers if excomposersearch not in cmpsr]
if composers:
    if verbose:
        if composersearch == "__all__":
            print("\nAll Composers in Library:\n")
        else:
            print("\nComposers with", composersearch, "in name", ":\n")
    print(*composers, sep="\n")
else:
    if verbose:
        print("No composers found matching", composersearch)
