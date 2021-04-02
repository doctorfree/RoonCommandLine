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

print(api.host)
