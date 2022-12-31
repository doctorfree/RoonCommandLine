# RoonCommandLine Release Notes

RoonCommandLine version 2.0.8 release 1 provides compatibility with volume handling changes in the Python Roon API. This release also adds support for fading track play volume immediately with the `roon_fade now` command.

RoonCommandLine version 2.0.7 release 1 was a minor feature and bugfix update. That release added support for fading track play volume and fixed possible stale authentication tokens.

## Installation

The installation automatically detects and stores the Roon Core IP and port. There is no need for any manual configuration. 

**IMPORTANT NOTE** Older versions of RoonCommandLine will no longer function properly. In order to use RoonCommandLine you must install version 2.0.2 release 1 or later.

[Download the latest Debian or RPM package format release](https://gitlab.com/doctorfree/RoonCommandLine/-/releases)

Install the package on Debian based systems by executing the command
```bash
sudo apt install ./RoonCommandLine_2.0.8-1.deb
```

Install the package on RPM based systems by executing the command
```bash
sudo yum localinstall ./RoonCommandLine-2.0.8-1.rpm
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
git clone https://gitlab.com/doctorfree/RoonCommandLine.git
cd RoonCommandLine
./Install
```

## Changelog

This release adds support for:

* Add immediate mode to roon_fade with 'now' argument
* Implement non-interactive immediate fading
* Add interactive menu system (`roon_fade -i`)
* Set man permissions correctly in manual install scripts

Version 2.0.7 release 1 added support for:

* Save authentication token right after we get a RoonApi handle (bug fix)
* Add options to `roon` command for controlling fading
* Add fade feature (`roon_fade` user command and `roon_faded` fade daemon)
* Man pages for fading and new commands
* Fixes for `now_playing`, `get_zone_volume`, and `get_zone_attributes`
* Add `get_zone_remaining` to get remaining time for now playing in zone
* Add `get_zone_volume` and `get_zone_attributes.py`

View the full changelog for this release at https://github.com/doctorfree/RoonCommandLine/blob/v2.0.7r2/CHANGELOG.md

See [CHANGELOG.md](https://github.com/doctorfree/RoonCommandLine/blob/master/CHANGELOG.md) for a full list of changes in every RoonCommandLine release
