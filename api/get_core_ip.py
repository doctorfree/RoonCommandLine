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
servers = discover.all()
discover.stop()

apis = [RoonApi(app, None, server[0], server[1], False) for server in servers]

auth_api = []
while len(auth_api) == 0:
    print("\nWaiting for authorization - in Roon, \
        click \033[1mSettings -> Extensions -> Enable\033[0m\n", flush=True)
    time.sleep(15)
    auth_api = [api for api in apis if api.token is not None]

api = auth_api[0]

for api in apis:
    api.stop()

print("RoonCoreIP =", api.host)
print("RoonCorePort =", api._port)

# save the token for next time
with open(tokenfile, "w") as f:
    f.write(str(api.token))
