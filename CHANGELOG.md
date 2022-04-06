# Changelog

All notable changes to this project will be documented in this file.

Apr 06, 2022 :
    Version 2.0.4 Release 1 adds Roon zone and grouped zone volume control

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

