# RoonCommandLine Release Notes

RoonCommandLine version 2.1.4 release 1 provides support for unattended installation.

- Set and export the `ROON_UNATTENDED` environment variable to perform an unattended installation
  - `export ROON_UNATTENDED="unattended"`
  - Use `sudo -E ...` to install Debian or RPM format packages
  - Alternately, `./Install unattended` will also perform an unattended installation
  - After an unattended installation, execute `/usr/local/bin/roon -c discover`.
- This release checks and repairs the RoonCommandLine Python virtual environment
  - Can occur if the system Python is upgraded and the previously installed Python is removed
  - Typically this issue is restricted to Homebrew installs of Python

## Installation

The installation automatically detects and stores the Roon Core IP and port. There is no need for any manual configuration.

Download the latest Debian or RPM package format release from the **Assets** section below.

Install the package on Debian based systems by executing the command

```bash
sudo apt install ./RoonCommandLine_2.1.4-1.deb
```

Install the package on RPM based systems by executing the command

```bash
sudo yum localinstall ./RoonCommandLine-2.1.4-1.rpm
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

## Release history

RoonCommandLine version 2.1.3 release 2 integrates the `Roon Community Remote` GUI for Linux

- Add menu options to install, update, and open the Roon GUI
- Install `figlet`, `gum`, and `fzf` in postinstall
- Add splash screen to menu open

RoonCommandLine version 2.1.3 release 1 provides support for specifying the default zone and last zone used

- Add usage to `get_zone_info`
- Add `-P` flag to `now_playing` to list paused zones
- Upgrade checks to prevent malformed `roon_api.ini`
- Add `-z default` and `-z last` to most commands to specify default or last zone used
- Updated man pages

RoonCommandLine version 2.1.2 release 4 provides improved info and formatting for now playing and media search.

- `now_playing` info includes state
- `now_playing` output formatted with `rich` if available
- Fixes for upgrades on systems with `BSD sed` (e.g. `macOS`)
- Media search and selection enhancements

RoonCommandLine version 2.1.2 release 3 provides support for:

- Add signal handler to Python scripts
- Add tracks listing, track play and album track play commands
- Add `Examples` and `Usage` to main menu
- Install `jq` in `macInstall`
- Improve info when selecting and listing in menus
- Improved `show_info()`

RoonCommandLine version 2.1.2 release 2 provides support for:

- Installation and use of the `roon-tui` Roon terminal user interface
  - Install `roon-tui` with `roon -I`
  - Open `roon-tui` with `roon -O`
- Add `roon-tui` wrapper `roontui`
- Add shortcuts to RoonCommandLine menus
- Add `list_album_tracks` command
- Use `fzf` to fuzzy select and list media

RoonCommandLine version 2.1.1 release 1 provides support for shuffled artist/genre/playlist playback

RoonCommandLine version 2.1.0 release 6 provides a more robust Python virtual environment installation of pip

RoonCommandLine version 2.1.0 release 5 ensures that pip is installed in the Python virtual environment

RoonCommandLine version 2.1.0 release 4 adds the capability to transfer the current queue from one Roon zone to another

RoonCommandLine version 2.1.0 release 3 moves to a Python virtual environment to support Ubuntu 23.04, Debian 12, and later

RoonCommandLine version 2.0.8 release 5 is a minor bug fix release and provides PEP 8 conformance

RoonCommandLine version 2.0.8 release 4 is a minor bug fix release, only restore saved `roon_api.ini` if in new format.

RoonCommandLine version 2.0.8 release 3 provides support for Homebrew installed Python and several bug fixes.

RoonCommandLine version 2.0.8 release 2 provided compatibility with volume handling changes in the Python Roon API. Volume change/setting can now be made using a percentage. This release also adds support for fading track play volume immediately with the `roon_fade now` command along with Mac installation fixes.

RoonCommandLine version 2.0.7 release 1 was a minor feature and bugfix update. That release added support for fading track play volume and fixed possible stale authentication tokens.

## Changelog

This release primarily adds support for installation on Ubuntu 23.04, Debian 12 and later in which a Python virtual environment is required.

The previous releases added support for:

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
- Add immediate mode to roon_fade with `now` argument
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

View the full changelog for this release at <https://github.com/doctorfree/RoonCommandLine/blob/v2.1.3r2/CHANGELOG.md>

See [CHANGELOG.md](https://github.com/doctorfree/RoonCommandLine/blob/master/CHANGELOG.md) for a full list of changes in every RoonCommandLine release
