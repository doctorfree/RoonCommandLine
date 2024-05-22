import argparse
import configparser
from os import path
import signal
import sys
from roonapi import RoonApi

def signal_handler(sig, frame):
    sys.exit(0)
signal.signal(signal.SIGINT, signal_handler)

config = configparser.ConfigParser()
config.read('/usr/local/Roon/etc/roon_api.ini')

# Set to IP address of your Roon Core
server = config['DEFAULT']['RoonCoreIP']
# Set to Port of your Roon Core
port = config['DEFAULT']['RoonCorePort']
# Name of the file that holds a Roon API token
tokenfile = config['DEFAULT']['TokenFileName']

parser = argparse.ArgumentParser()
parser.add_argument("-A", "--album", help="album search term")
parser.add_argument("-a", "--artist", help="artist search term")
parser.add_argument("-X", "--exalbum", help="album exclude search term")
parser.add_argument("-x", "--exartist", help="artist exclude search term")
parser.add_argument("-z", "--zone", help="zone selection")
args = parser.parse_args()

if args.album:
    albumsearch = args.album
else:
    albumsearch = config['DEFAULT']['DefaultAlbum']
if args.artist:
    artistsearch = args.artist
else:
    artistsearch = config['DEFAULT']['DefaultArtist']
if args.exalbum:
    exalbumsearch = args.exalbum
else:
    exalbumsearch = None
if args.exartist:
    exartistsearch = args.exartist
else:
    exartistsearch = None
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
else:
    # List matching artists
    artists = roonapi.list_media(output_id,
                                 ["Library",
                                  "Artists",
                                  artistsearch])
    if artists:
        album = None
        for artist in artists:
            if exartistsearch is not None:
                if exartistsearch in artist:
                    continue
            # List matching albums
            albums = roonapi.list_media(output_id,
                                        ["Library",
                                         "Artists",
                                         artist, albumsearch])
            if exalbumsearch is not None and albums:
                albums = [chk for chk in albums if exalbumsearch not in chk]
            if albums:
                album = albums[0]
                print("Playing album title", album, "by artist", artist)
                roonapi.play_media(output_id,
                                   ["Library", "Artists",
                                    artist, album], None, False)
                if len(albums) > 1:
                    print("\nAlbum titles by", artist,
                          "artist matching", albumsearch, ":\n")
                    print(*albums, sep="\n")
                    print("\nTo play another album by this artist by title")
                    print("\neither specify the full title or enough")
                    print("\nof a substring to provide a single match\n")
                break
        if album is None:
            print("No albums found matching", albumsearch)
    else:
        print("No artists found matching", artistsearch)
