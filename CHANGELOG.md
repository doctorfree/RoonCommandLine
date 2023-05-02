# Changelog

All notable changes to this project will be documented in this file.

May 2, 2023 :
RoonCommandLine version 2.0.8 release 4

    This is a bug fix release:
        * Only restore saved roon_api.ini if in new format

April 29, 2023 :
RoonCommandLine version 2.0.8 release 3

    This release adds support for:
        * Check for python3 in roon set_default
        * Support for Homebrew installed Python etc
        * Don't error out in postinstall
        * Postinstall fails when there is a directory that is not a valid user
        * Check if run as root user in Install
        * Always upgrade roonapi during install
        * Mac installation fixes
        * Restore ensurepip in Mac install
        * Fix permissions errors during Mac install
        * Remove symlinks in /usr/local/bin in Mac uninstall
        * Update install size in Debian packaging
        * Redirect stderr when invoking tput to set BOLD and NORMAL text
        * In Linux and Mac manual install scripts, upgrade roonapi if installed
        * Update set_volume man page, changelog, and release notes
        * Support percentage volume change using new roonapi methods
        * Handle negative volume levels in roon_fade

January 19, 2023 :
RoonCommandLine version 2.0.8 release 2 includes Mac installation fixes

December 31, 2022 :
RoonCommandLine version 2.0.8 release 1 provides API compatibility and feature updates

    This release adds support for:
        * Compatibility with Python Roon API 0.1.3
        * Support for percentage volume change/setting
        * Add immediate mode to roon_fade with 'now' argument
        * Implement non-interactive immediate fading
        * Add interactive menu system (`roon_fade -i`)
        * Set man permissions correctly in manual install scripts

December 11, 2022 :
RoonCommandLine version 2.0.7 release 1 is a minor feature and bugfix update

    This release adds support for:
        * Save authentication token right after we get a RoonApi handle (bug fix)
        * Add options to `roon` command for controlling fading
        * Add fade feature (`roon_fade` user command and `roon_faded` fade daemon)
        * Man pages for fading and new commands
        * Fixes for `now_playing`, `get_zone_volume`, and `get_zone_attributes`
        * Add `get_zone_remaining` to get remaining time for now playing in zone
        * Add `get_zone_volume` and `get_zone_attributes.py`

November 15, 2022 :
RoonCommandLine version 2.0.6 release 2 is a minor feature update

    This release adds support for:
        * Add list_playlist_tracks to list a playlist's tracks
        * Run roonapi commands in postinstall as user if provided
        * Don't use tput in postinstall (can trip up Kitty)

October 07, 2022 :
RoonCommandLine version 2.0.5 release 5 is a minor packaging update

    RoonCommandLine version 2.0.5 release 5 is a simple repackaging for Debian
    based systems. This release is functionally equivalent to version 2.0.5
    release 4. Repackaging for Debian based systems was necessary to avoid an
    incompatibility with `dpkg` compression format support across Debian based
    distributions. Install only if you are deploying on a Debian based
    distribution that does not support `zstd` compression (e.g. Raspberry
    Pi OS). Otherwise, 2.0.5 release 4 is sufficient. Welcome to Linux!

June 22, 2022 :
RoonCommandLine version 2.0.5 release 4 is a minor feature update

    This release adds support for:
        * Verify syntax of `pyroonconf` before sourcing
        * Restore corrupted `pyroonconf` to sensible defaults

May 22, 2022 :
RoonCommandLine version 2.0.5 release 3 is a bugfix update

    This release adds support for:
        * Check status of return from set_zone and set_zone_group and exit on failures
        * Adjust display height of some screenshots
        * Do not assume project was cloned in HOME/src/RoonCommandLine
        * Update usage message with now playing examples
        * Add scripted Linux install note to release notes
        * Quote zone name with info options

Apr 24, 2022 :
RoonCommandLine version 2.0.5 release 2 is a feature update

    This release adds support for:
        * A `now_playing` command and roon command `-n` option to retrieve now playing info for specified zone or all Roon zones
        * A `linInstall` script to perform scripted Linux install when no package available
        * When playing media by artist, composer, or in genre and no album or track is specified, use first in all matching
        * If no search term provided, list commands list all rather than default
        * Use sudo when upgrading in macInstall
        * Save and restore pyroonconf on upgrades
        * Added Size field to Debian control file
        * Add play_all and stop_all commands

Apr 15, 2022 :
RoonCommandLine version 2.0.5 release 1 is a feature update

    This release preserves existing configuration if it detects a
    previous release of RoonCommandLine is already installed. Only the
    Roon Core IP and port are reconfigured if necessary. In addition,
    the default zone groupings in `roon_api.ini` are improved to avoid
    grouping incompatible zones. Python scripts utilizing the Roon API
    have been improved to remove all warnings and use a single source for
    providing the extension version to Roon.

    Changes to RoonCommandLine commands include changing the `shuffle`
    and `repeat` commands to toggles, similar to what was done for `mute`.
    Note that `repeat` does not mimic the Roon `loop` feature which cycles
    through three values - 'loop', 'loop_one', and 'disabled'. The `repeat`
    command in RoonCommandLine and the Python Roon API is a Boolean and
    toggles between 'loop' and 'disabled'.

    A `mute_all` command was added to toggle playback muting in all Roon zones.

    A `pause_all` command was added to pause playback in all Roon zones.

    A `play_all` command was added to begin playback in all Roon zones.

    A `stop_all` command was added to stop playback in all Roon zones and release devices.

    A `-i` option was added to the `roon` command to display zone information.
    In the absence of any `-z zone` argument, information on all zones is displayed.
    If a zone is specified in combination with the `-i` argument, e.g. `-i -z Kitchen`,
    then extended information is displayed for that zone alone. The Python script
    `zone_properties.py` was added to support this feature.

Apr 09, 2022 :
RoonCommandLine version 2.0.4 release 3 is a feature modification

    This release modifies the muting/unmuting feature, changing it to a toggle.
    Muting is now a single command which toggles the state between muted and unmuted.

Apr 08, 2022 :
Version 2.0.4 Release 2 is a bugfix release.

    This release fixes a bug with muting/unmuting ungrouped zones

Apr 07, 2022 :
Version 2.0.4 Release 1 adds Roon zone and grouped zone volume control.
`roon -v volume` sets the volume level in the selected zone

    The volume argument has the format [g:][r:][s:]num
        Where 'g' indicates set volume for all zones in the group
              'r' specifies use relative method volume setting
              's' specifies use relative_step method volume setting
              'num' can be absolute (0-100) or relative (negative or positive)

Feb 17, 2022 :
Version 2.0.3 Release 2 adds several new commands including support for
playing a specified track by artist, playing a specified album by artist,
playing either a specified artist or album in designated genre, playing
a specified composer, and additional listing options. Listing and playing
commands now include support for artist and album name exclusion strings
allowing searches for a specified artist/album/composer/genre/playlist
whose name includes a specified string but not another string. This
exclusion filtering enables narrower listing, searching, and playing
of library media.

    Checks for Python 3 and Pip have been added to pre-installation scripts,
    MacOS installation has been significantly improved, installation of the
    roonapi Pip module is handled more gracefully.

Feb 11, 2022 :
Version 2.0.3 Release 1 ensures RoonCommandLine commands are in PATH.
The installation script has been revised to work with the updated
Python roonapi module version numbering. SSH invocations should
work in a wider range of environments with this release.

Jan 27, 2022 :
Version 2.0.2 Release 3 fixes bug introduced by change to return
status of the Bash builtin type command.

Jan 12, 2022 :
Version 2.0.2 Release 2 primarily consists of changes to packaging
and the implementation of release creation during the Gitlab
continuous integration process. Improved documentation in README.
Functionality remains consistent with Version 2.0.2 Release 1.

Dec 16, 2021 :
Version 2.0.2 Release 1 incorporates Roon Core API port discovery
and all Python calls using the RoonApi class now include the port
as well as the server IP address. This change was necessary as the
Roon Core API port is not fixed at 9100 but can change and did
change in the latest Roon update.

Dec 5, 2021 :
Version 2.0.1 Release 1 includes interactive menus, compatibility
with new Python Roon API version 0.0.39, Manual Pages, completely
automated installation and configuration, default local execution
of commands averting the need for SSH public key authentication,
and many bug fixes and improvements.
