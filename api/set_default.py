import argparse
import configparser

config = configparser.RawConfigParser(
    comment_prefixes='/', allow_no_value=True)
config.read('/usr/local/Roon/etc/roon_api.ini')

parser = argparse.ArgumentParser()
parser.add_argument("-A", "--album", help="set default album")
parser.add_argument("-a", "--artist", help="set default artist")
parser.add_argument("-c", "--composer", help="set default composer")
parser.add_argument("-g", "--genre", help="set default genre")
parser.add_argument("-p", "--playlist", help="set default playlist")
parser.add_argument("-r", "--radio", help="set default radio")
parser.add_argument("-t", "--tag", help="set default tag")
args = parser.parse_args()

if args.album:
    config['DEFAULT']['DefaultAlbum'] = args.album
if args.artist:
    config['DEFAULT']['DefaultArtist'] = args.artist
if args.composer:
    config['DEFAULT']['DefaultComposer'] = args.composer
if args.genre:
    config['DEFAULT']['DefaultGenre'] = args.genre
if args.playlist:
    config['DEFAULT']['DefaultPlaylist'] = args.playlist
if args.radio:
    config['DEFAULT']['DefaultRadio'] = args.radio
if args.tag:
    config['DEFAULT']['DefaultTag'] = args.tag

with open('/usr/local/Roon/etc/roon_api.ini', 'w') as configfile:
    config.write(configfile)
