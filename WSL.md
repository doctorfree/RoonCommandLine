# Microsoft Windows Subsystem for Linux

`RoonCommandLine` is not supported on Microsoft Windows platforms. However,
some `RoonCommandLine` users have had success deploying it or or the Python
code on which it is based on the Windows Subsystem for Linux (WSL).

We will attempt to provide notes here that may be instructive for those
Windows users who wish to run `RoonCommandLine` or the Python Roon API.

## Python Roon API

Roon community forum user Jon Spijker provides these notes on his successful
deployment of the Python Roon API (`roonapi.py`) on WSL.

**Note:** Jon provides a more detailed explanation and code in his
[RoonCommandLine + SmartSleep Integration for Windows](https://gist.github.com/jonspijker/d9dfd12751b319ebf835ba02da0eb7c9) gist on Github.

Steps to get the Python `roonapi.py` working successfully on Windows 11 using PowerShell.

### Goal

Playback detection using the Roon Python API with persistent token support
and integration into a PowerShell-based auto-sleep routine.

### Setup details

- Python environment (Windows 11)
- Installed Python 3.11 from python.org

#### Create a virtual environment

```bash
python -m venv C:\roonenv
```

#### Activate the virtual environment via PowerShell

```
C:\roonenv\Scripts\Activate.ps1
```

#### Install required modules inside the virtual environment

```bash
pip install websocket-client requests
```

#### Patch roonapi.py

Modify `C:\Windows\System32\roonenv\Lib\site-packages\roonapi\roonapi.py`
to accept a `token_path` argument in the `RoonApi` constructor and to
load/store the token persistently. This prevents the need for extension
approval every time the script is run.

### Playback detection script

Saved in `C:\Scripts\check_playback.py`.

It loads the token (if present), initializes the API, and prints the playback state of each zone.

### Example snippet

```python
from roonapi import RoonApi
import os, json

appinfo = {
  “extension_id”: “playback-checker”,
  “display_name”: “Playback Status Checker”,
  “display_version”: “1.0”,
  “publisher”: “xxx”,
  “email”: “noreply@example.com”,
}

token_path = os.path.expandvars(“C:\Scripts\roon_token.json”)
host = “127.0.0.1”
port = 9330
token = None

if os.path.exists(token_path):
  with open(token_path) as f:
    token = json.load(f)

roonapi = RoonApi(appinfo, token, host, port, token_path)

zones = roonapi.zones
for zone in zones.values():
  state = zone.get(“state”, “unknown”)
  print(f"{zone[‘display_name’]} is currently: {state}")
```

### Results

- Extension approval is now persistent thanks to the patched token path
- The script runs reliably from a static folder (`C:\Scripts`)
- Works perfectly with PowerShell automation (we’re integrating it into a sleep scheduler)
