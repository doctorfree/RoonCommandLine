import configparser
import os.path
from os import path

config = configparser.ConfigParser()
config.read('roon_api.ini')

# Set to IP address of your Roon Core
server = config['DEFAULT']['RoonCoreIP']
# Name of the file that holds a Roon API token
tokenfile = config['DEFAULT']['TokenFileName']

from roonapi import RoonApi
appinfo = {
    "extension_id": "python_roon_test",
    "display_name": "Python library for Roon",
    "display_version": "1.0.0",
    "publisher": "gregd",
    "email": "mygreat@emailaddress.com",
}

# Can be None if you don't yet have a token
if path.exists(tokenfile):
    token = open(tokenfile).read()
else:
    token = "None"

roonapi = RoonApi(appinfo, token, server)

playlists = roonapi.playlists()
print("number of playlists: %s" % playlists["list"]["count"])
print([item["title"] for item in playlists["items"]])

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
