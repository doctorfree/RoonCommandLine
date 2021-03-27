from roonapi import RoonApi
import os.path
from os import path

# Set to IP address of your Roon Core
server = "10.0.1.81"
# Name of the file that holds a Roon API token
tokenfile = "roontoken.txt"

appinfo = {
    "extension_id": "python_roon_test",
    "display_name": "Python library for Roon",
    "display_version": "1.0.0",
    "publisher": "gregd",
    "email": "mygreat@emailaddress.com",
}

target_zone = "Living Room"
# Can be None if you don't yet have a token
if path.exists(tokenfile):
    token = open(tokenfile).read()
else:
    token = "None"

roonapi = RoonApi(appinfo, token, server)

# get target zone output_id
zones = roonapi.zones
output_id = [
    output["zone_id"]
    for output in zones.values()
    if target_zone in output["display_name"]
][0]
print("OUTPUT ID", output_id)

# Play Radio Paradise Main 
print("RADIO")
items = roonapi.play_media(output_id, ["My Live Radio", "Radio Paradise: Main mix"])

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(roonapi.token)
