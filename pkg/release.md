RoonCommandLine version 2.0.5 release 1 adds upgrade features.

This minor release preserves existing configuration if it detects a previous release of RoonCommandLine is already installed. Only the Roon Core IP and port are reconfigured if necessary. In addition, the default zone groupings in `roon_api.ini` are improved to avoid grouping incompatible zones. Python scripts utilizing the Roon API have been improved to remove all warnings and use a single source for providing the extension version to Roon.

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
sudo apt install ./RoonCommandLine_2.0.5-1.deb
```

Install the package on RPM based systems by executing the command
```bash
sudo yum localinstall ./RoonCommandLine-2.0.5-1.rpm
```

Removal of the package on Debian based systems can be accomplished by issuing the command:

```bash
sudo apt remove rooncommandline
```

Removal of the package on RPM based systems can be accomplished by issuing the command:

```bash
sudo yum remove RoonCommandLine
```

To install on Mac OS X, clone the repository and execute the `Install` command:

```bash
git clone https://gitlab.com/doctorfree/RoonCommandLine.git
cd RoonCommandLine
./Install
```
