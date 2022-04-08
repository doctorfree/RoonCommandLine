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
target_zone = config['DEFAULT']['DefaultZone']

appinfo = {
    "extension_id": "roon_command_line",
    "display_name": "Python library for Roon",
    "display_version": "2.0.4",
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
    for (k, v) in outputs.items():
        if target_zone in v["display_name"]:
            zone_name = v["display_name"]
            output_id = k
            print("Default zone name: %s" % zone_name)
            print("Output properties: %s" % v)

# zone settings properties:
# loop        'loop' | 'loop_one' | 'disabled'    loop setting on the zone
# shuffle     boolean     indicates whether shuffle is enabled on the zone
# auto_radio  boolean     indicates whether auto-radio mode is enabled on the zone

    for zone in roonapi.zones.values():
        print("Zone name: %s" % zone["display_name"])
        print("Zone settings: %s" % zone["settings"])

    roonapi.stop()
