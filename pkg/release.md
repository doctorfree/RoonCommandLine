RoonCommandLine version 2.0.5 release 5 is a simple repackaging for Debian based systems. This release is functionally equivalent to version 2.0.5 release 4. Repackaging for Debian based systems was necessary to avoid an incompatibility with `dpkg` compression format support across Debian based distributions. Install only if you are deploying on a Debian based distribution that does not support `zstd` compression (e.g. Raspberry Pi OS). Otherwise, 2.0.5 release 4 is sufficient. Welcome to Linux!

RoonCommandLine version 2.0.5 release 4 adds support for:

* Verify syntax of `pyroonconf` before sourcing
* Restore corrupted `pyroonconf` to sensible defaults

The syntax verification and correction of `/usr/local/Roon/etc/pyroonconf` is currently only performed when the `roon` front-end is executed. If the backend RoonCommandLine utilities are invoked directly then the integrity of the `pyroonconf` configuration file is the responsibility of the user.

RoonCommandLine version 2.0.5 release 3 added support for:

* Check status of return from set_zone and set_zone_group and exit on failures
* Adjust display height of some screenshots
* Do not assume project was cloned in HOME/src/RoonCommandLine
* Update usage message with now playing examples
* Add scripted Linux install note to release notes
* Quote zone name with info options

RoonCommandLine version 2.0.5 release 2 added support for:

* A `now_playing` command and roon command `-n` option to retrieve now playing info for specified zone or all Roon zones
* A `linInstall` script to perform scripted Linux install when no package available
* When playing media by artist, composer, or in genre and no album or track is specified, use first in all matching
* If no search term provided, list commands list all rather than default
* Use sudo when upgrading in macInstall
* Save and restore pyroonconf on upgrades
* Added Size field to Debian control file
* Add play_all and stop_all commands

RoonCommandLine version 2.0.5 release 1 adds upgrade features, zone info, and commands.

This release preserves existing configuration if it detects a previous release of RoonCommandLine is already installed. Only the Roon Core IP and port are reconfigured if necessary. In addition, the default zone groupings in `roon_api.ini` are improved to avoid grouping incompatible zones. Python scripts utilizing the Roon API have been improved to remove all warnings and use a single source for providing the extension version to Roon.

Changes to RoonCommandLine commands include changing the `shuffle` and `repeat` commands to toggles, similar to what was done for `mute`. Note that `repeat` does not mimic the Roon `loop` feature which cycles through three values - 'loop', 'loop_one', and 'disabled'. The `repeat` command in RoonCommandLine and the Python Roon API is a Boolean and toggles between 'loop' and 'disabled'.

A `mute_all` command was added to toggle playback muting in all Roon zones.

A `pause_all` command was added to pause playback in all Roon zones.

A `play_all` command was added to begin playback in all Roon zones.

A `stop_all` command was added to stop playback in all Roon zones and release devices.

A `-i` option was added to the `roon` command to display zone information. In the absence of any `-z zone` argument, information on all zones is displayed. If a zone is specified in combination with the `-i` argument, e.g. `-i -z Kitchen`, then extended information is displayed for that zone alone. The Python script `zone_properties.py` was added to support this feature.

RoonCommandLine version 2.0.4 release 3 is a feature modification release.

This release changes the mute/unmute commands to a toggle. Both commands operate exactly the same, toggling the muting/unmuting of the selected zone or zone grouping. The two commands are retained rather than removing `unmute` in order to preserve compatibility with any existing scripts that use these commands.

RoonCommandLine version 2.0.4 release 2 is a bugfix release.

This release fixes a bug with muting/unmuting ungrouped zones.

RoonCommandLine version 2.0.4 release 1 adds zone and zone grouping volume control.

```
The command `roon -v volume` sets the volume level in the selected zone.

The `volume` argument has the format `[g:][r:][s:]num`

Where `g` indicates set volume for all zones in the group
      `r` specifies use relative method volume setting
      `s` specifies use relative_step method volume setting
      `num` can be absolute (0-100) or relative (negative or positive)
```

RoonCommandLine version 2.0.3 release 2 adds several new commands including support for playing a specified track by artist, playing a specified album by artist, playing either a specified artist or album in designated genre, playing a specified composer, and additional listing options. Listing and playing commands now include support for artist and album name exclusion strings allowing searches for a specified artist/album/composer/genre/playlist whose name includes a specified string but not another string. This exclusion filtering enables narrower listing, searching, and playing of library media.

Checks for Python 3 and Pip have been added to pre-installation scripts, MacOS installation has been significantly improved, installation of the roonapi Pip module is handled more gracefully.

RoonCommandLine version 2.0.x releases add support for detection of the Roon Core port as well as its IP address. The port number is stored in `roon_api.ini` and used in all subsequent calls to the Python Roon API. This was necessary as Roon Labs changed the port number in the most recent update. Extensions shouldn't be assuming a hard coded port number anyway so this change prompted a good improvement although it was irritating at first. A bug introduced by the change to return status of the Bash builtin type command was addressed. RoonCommandLine commands' location are added to PATH or full path used in SSH invocations. The installation script has been revised to work with the updated Python roonapi module version numbering. SSH invocations should work in a wider range of environments with this release.

The installation automatically detects and stores the Roon Core IP and port. There is no need for any manual configuration. 

**IMPORTANT NOTE** Older versions of RoonCommandLine will no longer function properly. In order to use RoonCommandLine you must install version 2.0.2 release 1 or later.

[Download the latest Debian or RPM package format release](https://gitlab.com/doctorfree/RoonCommandLine/-/releases)

Install the package on Debian based systems by executing the command
```bash
sudo apt install ./RoonCommandLine_2.0.5-5.deb
```

Install the package on RPM based systems by executing the command
```bash
sudo yum localinstall ./RoonCommandLine-2.0.5-5.rpm
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
