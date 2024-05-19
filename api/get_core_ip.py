import configparser
import time
from roonapi import RoonApi, RoonDiscovery

config = configparser.ConfigParser()
config.read('/usr/local/Roon/etc/roon_api.ini')

tokenfile = config['DEFAULT']['TokenFileName']
version = config['DEFAULT']['RoonCommandLineVersion']
release = config['DEFAULT']['RoonCommandLineRelease']
fullver = version + "-" + release

app = {
    "extension_id": "roon_command_line",
    "display_name": "Python library for Roon",
    "display_version": fullver,
    "publisher": "RoonCommandLine",
    "email": "roon@ronrecord.com",
    "website": "https://github.com/doctorfree/RoonCommandLine",
}

discover = RoonDiscovery(None)
server = discover.first()
discover.stop()

apis = [RoonApi(app, None, server[0], server[1], False)]
auth_api = []

print("\nWaiting for authorization - in Roon, click Settings -> Extensions -> Enable\n", flush=True)
while len(auth_api) == 0:
    auth_api = [api for api in apis if api.token is not None]
    time.sleep(10)

api = auth_api[0]

for api in apis:
    api.stop()

print("RoonCoreIP =", api.host)
print("RoonCorePort =", api._port)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(str(api.token))
