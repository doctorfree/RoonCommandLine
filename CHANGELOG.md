# Changelog

All notable changes to this project will be documented in this file.

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

