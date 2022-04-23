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
  if target_zone == "__all__":
    target_zone = None
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
      print("\nNow playing in zone: %s" % zone_name)
      track = json.dumps(zone["now_playing"]["three_line"]["line1"], ensure_ascii=False).encode('utf8')
      print("\tTrack:\t %s" % track.decode())
      artist = json.dumps(zone["now_playing"]["three_line"]["line2"], ensure_ascii=False).encode('utf8')
      print("\tArtist:\t %s" % artist.decode())
      album = json.dumps(zone["now_playing"]["three_line"]["line3"], ensure_ascii=False).encode('utf8')
      print("\tAlbum:\t %s" % album.decode())
  else:
    for (k, v) in outputs.items():
      if target_zone in v["display_name"]:
        zone_name = v["display_name"]
        output_id = k
        zone = roonapi.zone_by_output_id(output_id)
        if zone is not None:
          print("\nNow playing in zone: %s" % zone_name)
          track = json.dumps(zone["now_playing"]["three_line"]["line1"], ensure_ascii=False).encode('utf8')
          print("\tTrack:\t %s" % track.decode())
          artist = json.dumps(zone["now_playing"]["three_line"]["line2"], ensure_ascii=False).encode('utf8')
          print("\tArtist:\t %s" % artist.decode())
          album = json.dumps(zone["now_playing"]["three_line"]["line3"], ensure_ascii=False).encode('utf8')
          print("\tAlbum:\t %s" % album.decode())

# save the token for next time
with open(tokenfile, "w") as f:
  f.write(str(roonapi.token))
