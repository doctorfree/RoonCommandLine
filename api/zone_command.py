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
parser.add_argument("-c", "--command", help="command selection")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.command:
    zone_command = args.command
else:
    zone_command = "play"
if args.zone:
    target_zone = args.zone
else:
    target_zone = config['DEFAULT']['DefaultZone']

zone_name = target_zone

version = config['DEFAULT']['RoonCommandLineVersion']
release = config['DEFAULT']['RoonCommandLineRelease']
fullver = version + "-" + release

from roonapi import RoonApi
# import roonapi

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
not_executed = True
for (k, v) in outputs.items():
    if target_zone in v["display_name"]:
        zone_name = v["display_name"]
        output_id = k

if zone_command == "verify":
    if output_id is None:
        print("")
    else:
        print(zone_name)
    sys.exit()
else:
    if output_id is None:
        err = "No zone found matching " + target_zone
        sys.exit(err)
    else:
        # Apply the mute command to all zones in a zone grouping
        is_grouped = roonapi.is_grouped(output_id)
        if is_grouped:
          grouped_zone_names = roonapi.grouped_zone_names(output_id)
          if grouped_zone_names is not None:
            for zone_name in grouped_zone_names:
              for (k, v) in outputs.items():
                if zone_name in v["display_name"]:
                  output_id = k
                  if zone_command == "mute" or zone_command == "unmute":
                    if outputs[output_id]["volume"]["is_muted"]:
                      roonapi.mute(output_id, False)
                    else:
                      roonapi.mute(output_id, True)
                    not_executed = False
          else:
            if zone_command == "mute" or zone_command == "unmute":
              if outputs[output_id]["volume"]["is_muted"]:
                roonapi.mute(output_id, False)
              else:
                roonapi.mute(output_id, True)
              not_executed = False
        else:
          if zone_command == "mute" or zone_command == "unmute":
            if outputs[output_id]["volume"]["is_muted"]:
              roonapi.mute(output_id, False)
            else:
              roonapi.mute(output_id, True)
            not_executed = False
          elif zone_command == "pause_all":
            roonapi.pause_all()
            not_executed = False
          elif zone_command == "repeat" or zone_command == "unrepeat":
            zone = roonapi.zone_by_output_id(output_id)
            if zone is not None:
              looping = zone["settings"]["loop"]
              if looping == "loop" or looping == "loop_one":
                roonapi.repeat(output_id, False)
              else:
                roonapi.repeat(output_id, True)
              not_executed = False
          elif zone_command == "shuffle" or zone_command == "unshuffle":
            zone = roonapi.zone_by_output_id(output_id)
            if zone is not None:
              if zone["settings"]["shuffle"]:
                roonapi.shuffle(output_id, False)
              else:
                roonapi.shuffle(output_id, True)
              not_executed = False
          else:
            roonapi.playback_control(output_id, zone_command)
            not_executed = False
        if not_executed:
          if zone_command == "pause_all":
            roonapi.pause_all()
          elif zone_command == "repeat" or zone_command == "unrepeat":
            zone = roonapi.zone_by_output_id(output_id)
            if zone is not None:
              looping = zone["settings"]["loop"]
              if looping == "loop" or looping == "loop_one":
                roonapi.repeat(output_id, False)
              else:
                roonapi.repeat(output_id, True)
          elif zone_command == "shuffle" or zone_command == "unshuffle":
            zone = roonapi.zone_by_output_id(output_id)
            if zone is not None:
              if zone["settings"]["shuffle"]:
                roonapi.shuffle(output_id, False)
              else:
                roonapi.shuffle(output_id, True)
          elif zone_command == "mute_all":
            for (k, v) in outputs.items():
              if outputs[k]["volume"]["is_muted"]:
                roonapi.mute(k, False)
              else:
                roonapi.mute(k, True)
          else:
            roonapi.playback_control(output_id, zone_command)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(str(roonapi.token))
