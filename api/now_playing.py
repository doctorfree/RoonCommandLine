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
parser.add_argument("-a", "--all", default=False, action='store_true',
                    help="display all zones regardless of state")
args = parser.parse_args()

if args.zone:
    target_zone = args.zone
    if target_zone == "__all__":
        target_zone = None
else:
    target_zone = None
if args.all:
    filterplaying = None
else:
    filterplaying = 1

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

with RoonApi(appinfo, token, server, port) as roonapi:

    # save the token for next time
    with open(tokenfile, "w") as f:
        f.write(str(roonapi.token))

    outputs = roonapi.outputs

    output_id = None
    if target_zone is None:
        for zone in roonapi.zones.values():
            state = "Unknown"
            if zone["state"] is not None:
                state = zone["state"]
            if filterplaying is not None and state != "playing":
                continue
            else:
                zone_name = zone["display_name"]
                print("\nNow playing in zone: %s" % zone_name)
                track = json.dumps(zone["now_playing"]["three_line"]["line1"],
                                   ensure_ascii=False).encode('utf8')
                print("\tTrack:\t %s" % track.decode())
                artist = json.dumps(zone["now_playing"]["three_line"]["line2"],
                                    ensure_ascii=False).encode('utf8')
                print("\tArtist:\t %s" % artist.decode())
                album = json.dumps(zone["now_playing"]["three_line"]["line3"],
                                   ensure_ascii=False).encode('utf8')
                print("\tAlbum:\t %s" % album.decode())
                print("\tState:\t %s" % state)
    else:
        for (k, v) in outputs.items():
            if target_zone in v["display_name"]:
                state = "Unknown"
                zone_name = v["display_name"]
                output_id = k
                zone = roonapi.zone_by_output_id(output_id)
                if zone is not None:
                    if zone["state"] is not None:
                        state = zone["state"]
                    if filterplaying is not None and state != "playing":
                        continue
                    else:
                        print("\nNow playing in zone: %s" % zone_name)
                        track = json.dumps(
                            zone["now_playing"]["three_line"]["line1"],
                            ensure_ascii=False).encode('utf8')
                        print("\tTrack:\t %s" % track.decode())
                        artist = json.dumps(
                            zone["now_playing"]["three_line"]["line2"],
                            ensure_ascii=False).encode('utf8')
                        print("\tArtist:\t %s" % artist.decode())
                        album = json.dumps(
                            zone["now_playing"]["three_line"]["line3"],
                            ensure_ascii=False).encode('utf8')
                        print("\tAlbum:\t %s" % album.decode())
                        print("\tState:\t %s" % state)
