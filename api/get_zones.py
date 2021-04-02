import time

from roonapi import RoonApi, RoonDiscovery

appinfo = {
    "extension_id": "python_roon_test",
    "display_name": "Python library for Roon",
    "display_version": "1.0.0",
    "publisher": "gregd",
    "email": "mygreat@emailaddress.com",
}

discover = RoonDiscovery(None)
servers = discover.all()
apis = [RoonApi(appinfo, None, server[0], server[1], False) for server in servers]

auth_api = []
while len(auth_api) == 0:
    print("Waiting for authorization - in Roon, click Settings -> Extensions -> Enable", flush=True)
    time.sleep(15)
    auth_api = [api for api in apis if api.token is not None]

api = auth_api[0]

# This is what we need to reconnect
core_id = api.core_id
token = api.token

discover.stop()
for api in apis:
    api.stop()

roonapi = RoonApi(appinfo, token, None, None, True, core_id)

zones = roonapi.zones
for output in zones.values():
    zone_name = output["display_name"]
    print(zone_name)
