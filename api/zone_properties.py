import argparse
import configparser
import json
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

version = config['DEFAULT']['RoonCommandLineVersion']
release = config['DEFAULT']['RoonCommandLineRelease']
fullver = version + "-" + release

parser = argparse.ArgumentParser()
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.zone:
    target_zone = args.zone
else:
    target_zone = None

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

with RoonApi(appinfo, token, server, port) as roonapi:

    outputs = roonapi.outputs

    output_id = None
    if target_zone is None:
      for zone in roonapi.zones.values():
        zone_name = zone["display_name"]
        print("Zone name: %s" % zone_name)
        print("Zone settings: %s" % json.dumps(zone["settings"], indent=4))
        print("\nNow playing: {")
        track = json.dumps(zone["now_playing"]["three_line"]["line1"], ensure_ascii=False).encode('utf8')
        print("\t\"track\": %s," % track.decode())
        artist = json.dumps(zone["now_playing"]["three_line"]["line2"], ensure_ascii=False).encode('utf8')
        print("\t\"artist\": %s," % artist.decode())
        album = json.dumps(zone["now_playing"]["three_line"]["line3"], ensure_ascii=False).encode('utf8')
        print("\t\"album\": %s\n}" % album.decode())
    else:
      for (k, v) in outputs.items():
        if target_zone in v["display_name"]:
            zone_name = v["display_name"]
            output_id = k
            print("Zone name: %s" % zone_name)
            print("Output properties: %s" % json.dumps(v, indent=4))
            zone = roonapi.zone_by_output_id(output_id)
            if zone is not None:
              print("Zone settings: %s" % json.dumps(zone["settings"], indent=4))
              print("\nNow playing: {")
              track = json.dumps(zone["now_playing"]["three_line"]["line1"], ensure_ascii=False).encode('utf8')
              print("\t\"track\": %s," % track.decode())
              artist = json.dumps(zone["now_playing"]["three_line"]["line2"], ensure_ascii=False).encode('utf8')
              print("\t\"artist\": %s," % artist.decode())
              album = json.dumps(zone["now_playing"]["three_line"]["line3"], ensure_ascii=False).encode('utf8')
              print("\t\"album\": %s\n}" % album.decode())

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(str(roonapi.token))
