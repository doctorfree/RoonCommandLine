# RoonCommandLine Release Notes

RoonCommandLine version 2.1.0 release 1 moves to a Python virtual environment to support Ubuntu 22.04, Debian 12, and later

RoonCommandLine version 2.0.8 release 5 is a minor bug fix release and provides PEP 8 conformance

RoonCommandLine version 2.0.8 release 4 is a minor bug fix release, only restore saved `roon_api.ini` if in new format.

RoonCommandLine version 2.0.8 release 3 provides support for Homebrew installed Python and several bug fixes.

RoonCommandLine version 2.0.8 release 2 provided compatibility with volume handling changes in the Python Roon API. Volume change/setting can now be made using a percentage. This release also adds support for fading track play volume immediately with the `roon_fade now` command along with Mac installation fixes.

RoonCommandLine version 2.0.7 release 1 was a minor feature and bugfix update. That release added support for fading track play volume and fixed possible stale authentication tokens.

## Installation

The installation automatically detects and stores the Roon Core IP and port. There is no need for any manual configuration.

**IMPORTANT NOTE** Older versions of RoonCommandLine will no longer function properly. In order to use RoonCommandLine you must install version 2.0.2 release 1 or later.

[Download the latest Debian or RPM package format release](https://github.com/doctorfree/RoonCommandLine/releases)

Install the package on Debian based systems by executing the command

```bash
sudo apt install ./RoonCommandLine_2.1.0-1.deb
```

Install the package on RPM based systems by executing the command

```bash
sudo yum localinstall ./RoonCommandLine-2.1.0-1.rpm
```

Removal of the package on Debian based systems can be accomplished by issuing the command:

```bash
sudo apt remove rooncommandline
```

Removal of the package on RPM based systems can be accomplished by issuing the command:

```bash
sudo yum remove RoonCommandLine
```

To install on Mac OS X or a Linux system without support for Debian or Red Hat installation packages, clone the repository and execute the `Install` command:

```bash
git clone https://github.com/doctorfree/RoonCommandLine.git
cd RoonCommandLine
./Install
```

## Changelog

This release primarily adds support for installation on Ubuntu 22.04, Debian 12 and later in which a Python virtual environment is required.

The previous release added support for:

- Check for python3 in roon set_default
- Support for Homebrew installed Python etc
- Don't error out in postinstall
- Postinstall fails when there is a directory in /home that is not a valid user
- Check if run as root user in Install
- Always upgrade roonapi during install
- Mac installation fixes
- Restore ensurepip in Mac install
- Fix permissions errors during Mac install
- Remove symlinks in /usr/local/bin in Mac uninstall
- Redirect stderr when invoking tput to set BOLD and NORMAL text
- In Linux and Mac manual install scripts, upgrade roonapi if installed
- Support percentage volume change using new roonapi methods
- Handle negative volume levels in roon_fade
- Compatibility with latest `roonapi` volume methods
- Support for percentage volume change/setting
- Add immediate mode to roon_fade with 'now' argument
- Implement non-interactive immediate fading
- Add interactive menu system (`roon_fade -i`)
- Set man permissions correctly in manual install scripts

Version 2.0.7 release 1 added support for:

- Save authentication token right after we get a RoonApi handle (bug fix)
- Add options to `roon` command for controlling fading
- Add fade feature (`roon_fade` user command and `roon_faded` fade daemon)
- Man pages for fading and new commands
- Fixes for `now_playing`, `get_zone_volume`, and `get_zone_attributes`
- Add `get_zone_remaining` to get remaining time for now playing in zone
- Add `get_zone_volume` and `get_zone_attributes.py`

View the full changelog for this release at <https://github.com/doctorfree/RoonCommandLine/blob/v2.1.0r1/CHANGELOG.md>

See [CHANGELOG.md](https://github.com/doctorfree/RoonCommandLine/blob/master/CHANGELOG.md) for a full list of changes in every RoonCommandLine release
