# Changelog

All notable changes to this project will be documented in this file.

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

Thu Jan 27 10:45:06 2022 -0800 006b099 :
   Fix bug introduced by change to return status of builtin type command
Thu Jan 20 11:43:54 2022 -0800 ed9b2c0 :
   Redirect stderr and stdout to parent process during RPM scriptlets
Wed Jan 12 11:54:11 2022 -0800 4c333a2 :
   Get the RPM file name right
Wed Jan 12 08:37:26 2022 -0800 1a8003b :
   Added release description template
Wed Jan 12 08:22:59 2022 -0800 434464e :
   Create zip archive in CI
Wed Jan 12 08:16:40 2022 -0800 9e2a570 :
   Avoid interactive rpm install in CI
Wed Jan 12 08:10:00 2022 -0800 191b964 :
   Updated changelog in prep for version 2.0l.2 release 2
Wed Jan 12 08:05:19 2022 -0800 6123da4 :
   Create release in Gitlab CI
Tue Jan 11 14:03:46 2022 -0800 bfcb2cc :
   Distribute zip format, name compressed tar with tgz suffix
Tue Jan 11 13:52:54 2022 -0800 018f850 :
   Rename RPMs if necessary
Tue Jan 11 13:33:28 2022 -0800 a9bde4e :
   Copy dist files in install in spec file, do not do post install strip
Thu Jan 6 11:58:27 2022 -0800 0af6bc9 :
   Ignore Vim files
Wed Dec 29 14:05:04 2021 -0800 bd6df21 :
   Added an Applications section with the first application a Pi Spotify streamer for Roon
Wed Dec 29 10:04:31 2021 -0800 39a5311 :
   Move section on introducing the command line to Usage
Wed Dec 29 09:49:27 2021 -0800 1f10b29 :
   Add dependencies to RPM spec file
Tue Dec 28 10:03:02 2021 -0800 e9b253f :
   Rename MirrorCommandLine to MirrorCommand
Thu Dec 16 14:25:47 2021 -0800 da61008 :
   Updated with latest url to browse artifacts
Thu Dec 16 13:08:49 2021 -0800 a7c4b6c :
   Version 2.0.2 Release 1 with support for variable Roon Core port number
Thu Dec 16 12:19:43 2021 -0800 f31ec06 :
   Set Roon Core port in roon_api.ini and pass the port along with the server for all RoonApi calls
Wed Dec 8 16:17:30 2021 -0800 b877f5f :
   minor grammar fix
Wed Dec 8 16:16:13 2021 -0800 f9ee25e :
   Roon Bridge and Roon Server users may want command line control
Wed Dec 8 15:01:52 2021 -0800 afb0058 :
   Add links to markdown for man commands
Wed Dec 8 14:55:02 2021 -0800 0011ee3 :
   Split History and Motivation sections
Wed Dec 8 12:25:18 2021 -0800 cc91a47 :
   Added section on introduction to using the command line
Tue Dec 7 08:44:34 2021 -0800 68b3bd8 :
   Highlight roon command manual page
Mon Dec 6 10:54:04 2021 -0800 18994d8 :
   Use caps for name in license
Mon Dec 6 10:43:22 2021 -0800 4a66e82 :
   Formatting improvements to manual pages
Sun Dec 5 18:59:35 2021 -0800 6594a40 :
   Add browse-artifacts.txt
Sun Dec 5 17:40:58 2021 -0800 49a1c79 :
   Add section on Documentation, update CHANGELOG in preparation for new release
Sun Dec 5 14:39:26 2021 -0800 3397317 :
   Only patch roonapi python pip module if version 0.0.38 or earlier
Sun Dec 5 14:14:10 2021 -0800 9272c4f :
   Only apply patch if Roonapi is version 0.0.38 or earlier
Sun Dec 5 12:36:40 2021 -0800 993386b :
   Improve auto generation of man pages with some formatting changes
Sun Dec 5 11:16:50 2021 -0800 8693272 :
   First pass at auto-generating man pages for all the commands using pandoc
Sun Dec 5 07:44:54 2021 -0800 d9bf7e4 :
   Create new directories for markdown input and man page output for automatically generated man pages using pandoc
Fri Dec 3 17:36:44 2021 -0800 f5db60f :
   Change special search term from 'all' to '__all__'
Fri Dec 3 14:19:17 2021 -0800 37f65b7 :
   Set image sizes
Fri Dec 3 14:15:05 2021 -0800 c5e9960 :
   Redo screenshots, convert to PNG
Fri Dec 3 14:04:01 2021 -0800 eee77ad :
   Integrate interactive menus with options, move functions up to define them prior to argument processing
Fri Dec 3 12:10:16 2021 -0800 4eab67c :
   Add get/set of defaults in INI file, expand interactive menus
Thu Dec 2 17:50:31 2021 -0800 6f57dac :
   Add bundle management scripts to bundle/Tools directory
Thu Dec 2 17:47:57 2021 -0800 43d5b09 :
   Add skeleton app bundle for Mac OS X future development
Thu Dec 2 13:50:38 2021 -0800 d4b7e1b :
   Move Play Radio up in list for better formatting
Thu Dec 2 13:39:15 2021 -0800 3c5876d :
   Merge branch 'master' of ssh://gitlab.com/doctorfree/RoonCommandLine
Thu Dec 2 13:38:58 2021 -0800 d4c9c66 :
   Add Play Radio to interactive dialog menu
Thu Dec 2 13:21:59 2021 -0800 c7f49fb :
   Fixed bug in setting LOCAL on upgrade, bumped minor version with new interactive menus
Thu Dec 2 11:48:29 2021 -0800 e5a68aa :
   Add link to wiki
Thu Dec 2 09:59:09 2021 -0800 ef851e3 :
   Add note about search term 'all'
Thu Dec 2 08:26:05 2021 -0800 15af8cb :
   Enable local access by default when installing the entire package
Thu Dec 2 08:17:37 2021 -0800 515fdd4 :
   Expanded the section on History and added subsection on Motivation
Thu Dec 2 07:43:08 2021 -0800 2047964 :
   Add interactive dialog menus when invoked with no arguments
Wed Dec 1 13:06:01 2021 -0800 32cd4c3 :
   Move setting of default zone in pyroonconf down till after it is set in roon_api.ini
Wed Dec 1 09:20:29 2021 -0800 7bede79 :
   Fix glitches in some Mac installs wrt Python module location and permissions
Mon Nov 29 10:32:54 2021 -0800 2ee9bd7 :
   Updated changelog in preparation for release
Sun Nov 28 13:43:11 2021 -0800 3fdf95b :
   Use sudo to install roonapi in Mac installs
Sat Nov 27 17:49:31 2021 -0800 90f2de0 :
   Add Requirements section
Fri Nov 26 15:21:56 2021 -0800 7255c0b :
   Remove leading path component up to username when selecting SSH user
Fri Nov 26 15:16:35 2021 -0800 dba2305 :
   Don't use -y option with python pip module install
Fri Nov 26 15:05:18 2021 -0800 b515e5e :
   Updated CHANGELOG in preparation for release, refer to README in INSTALL document
Fri Nov 26 14:44:39 2021 -0800 a213ec8 :
   Copy rpm into dist and add it to CI artifacts
Fri Nov 26 06:15:12 2021 -0800 013bf8d :
   Add sections for RPM based installation and removal
Thu Nov 25 20:38:09 2021 -0800 8806f8e :
   Install/Uninstall now supports RPM, Debian, and Mac
Thu Nov 25 16:37:22 2021 -0800 28f573d :
   Pass version and release in to RPM spec file
Thu Nov 25 16:34:07 2021 -0800 e785650 :
   Use dpkg rather than dpkg-deb, add RELEASE value in VERSION and packaging
Thu Nov 25 15:58:27 2021 -0800 7069532 :
   RPM packaging, move postinstall and preremove scripting out of Debian maintainer scripts to standalone so we can use them in all packaging
Wed Nov 24 18:30:23 2021 -0800 5181c21 :
   Elaborate on automated configuration and protection of the Roon Core
Wed Nov 24 17:09:57 2021 -0800 08fe9bb :
   Minor formatting of grouped zones
Wed Nov 24 17:05:57 2021 -0800 0158cc4 :
   Check for compatibility when grouping zones
Wed Nov 24 15:03:28 2021 -0800 ada6979 :
   Add -l option to get_zone_info to retrieve list of groupable zones
Wed Nov 24 11:26:31 2021 -0800 8124da3 :
   Move default zone setting down after INI settings are complete
Wed Nov 24 11:08:10 2021 -0800 d4ac673 :
   Start on RPM build, create simple RPM spec file
Wed Nov 24 09:04:44 2021 -0800 34828d2 :
   Show group with names rather than ids
Wed Nov 24 07:57:58 2021 -0800 496d6ec :
   List zone ids that Airplay devices can group with
Wed Nov 24 07:27:56 2021 -0800 a81992d :
   Add get_zone_info command
Wed Nov 24 06:54:23 2021 -0800 36c948f :
   Use Python to invoke Pip
Tue Nov 23 17:23:36 2021 -0800 be5becf :
   Uninstall script for Mac
Tue Nov 23 16:45:55 2021 -0800 f621dbc :
   Note about sudo privilege on Mac installs
Tue Nov 23 16:42:01 2021 -0800 da28688 :
   Mirror Debian install steps in Mac install script, where possible
Tue Nov 23 13:51:11 2021 -0800 52d2212 :
   Set permissions on patches
Tue Nov 23 13:37:37 2021 -0800 82da806 :
   Need to set tokenfile from config
Tue Nov 23 13:33:47 2021 -0800 c5b725e :
   Save token in get_core_ip.py
Tue Nov 23 13:03:54 2021 -0800 5b7130c :
   Remove sample awk from postinst
Tue Nov 23 12:52:35 2021 -0800 cf0a0fa :
   Add fourth group initialization
Tue Nov 23 12:20:48 2021 -0800 9a27f44 :
   Fix awk, add another group initialization
Tue Nov 23 12:04:50 2021 -0800 f48cbb9 :
   Use awk rather than loop to setup roon_api.ini defaults
Tue Nov 23 11:40:05 2021 -0800 55626aa :
   Set permissions on directories
Tue Nov 23 11:36:44 2021 -0800 a733131 :
   Call get_zones in postinst to provide a basic start in roon_api.ini
Tue Nov 23 10:51:32 2021 -0800 4a7def9 :
   Add -g flag to list_zones.py, invoke that in get_zones
Tue Nov 23 09:30:27 2021 -0800 77d223c :
   Fix sed in get_zones, quote argument in list_zones
Tue Nov 23 09:07:22 2021 -0800 66607b4 :
   Use awk to get zone names rather than modifying the Python code
Tue Nov 23 08:29:30 2021 -0800 8aca08c :
   Add action to -g argument in list_zones
Tue Nov 23 08:06:00 2021 -0800 d29b3cd :
   Add get_zones command to retrieve a simple listing of current zone names
Mon Nov 22 19:02:27 2021 -0800 22b925e :
   Update installation and removal sections with latest Debian packaging info
Mon Nov 22 17:59:52 2021 -0800 5fd0688 :
   Delete section on Manual patch procedure
Mon Nov 22 17:44:21 2021 -0800 87f74e8 :
   Move token to etc and make that directory writeable by SSH user
Mon Nov 22 17:02:12 2021 -0800 baa2ad7 :
   Set permissions and ownership correctly
Mon Nov 22 16:22:34 2021 -0800 5a23c3c :
   Don't escape the single quote in site sed script
Mon Nov 22 16:03:41 2021 -0800 8d37e5c :
   Set name and location of patch file
Mon Nov 22 15:53:43 2021 -0800 56af036 :
   Remove orig files in etc
Mon Nov 22 15:49:05 2021 -0800 3751e5f :
   Global Python packages is named differently than site dir
Mon Nov 22 14:34:08 2021 -0800 d916a59 :
   Move python3-pip install out of postinst and just make it a dependency
Mon Nov 22 14:28:20 2021 -0800 77af7e3 :
   Version 2.0.0 and later uses the Python global site-packages directory
Mon Nov 22 14:16:03 2021 -0800 81b7805 :
   Move preinst pip install to postinst
Mon Nov 22 14:10:59 2021 -0800 c20e59f :
   Add preinst to install roonapi pip module
Mon Nov 22 13:34:24 2021 -0800 9c854d0 :
   Move setting of Roon Core IP to end of postinst
Mon Nov 22 13:12:13 2021 -0800 3698298 :
   Locate python executable
Mon Nov 22 12:47:49 2021 -0800 47a08a2 :
   Execute found python executable
Mon Nov 22 12:35:28 2021 -0800 b89cfed :
   Locate python executable
Mon Nov 22 11:35:14 2021 -0800 83f8923 :
   Set Architecture to 'all' in control file
Mon Nov 22 11:01:50 2021 -0800 2c659ab :
   Set Architecture to 'any' in control file
Mon Nov 22 10:37:33 2021 -0800 3b37855 :
   Install in /usr/local/Roon/ and use global Python site packages. Add Debian format packaging, major reorg, bump major version to 2
Tue Oct 26 11:15:03 2021 -0700 70673e4 :
   Add sponsor funding link
Sun Oct 17 18:37:31 2021 -0700 9191c4a :
   Add Neal Stephenson quote as prelude
Sat Oct 9 09:52:27 2021 -0700 4088fe8 :
   List currently supported features
Sat May 29 09:39:04 2021 -0700 9c448aa :
   Update install and patches to work with pyroon 0.0.37
Mon Apr 26 16:53:20 2021 -0700 72af6d9 :
   Update README with info on zone grouping and local execution
Mon Apr 26 16:02:53 2021 -0700 6792192 :
   Add zone grouping and ungrouping command line features
Sun Apr 25 19:27:22 2021 -0700 643b9fe :
   Add note on enabling local execution
Sun Apr 25 19:04:45 2021 -0700 44ec2de :
   Revise list_zones to use new group zone name method in version 0.0.36, add local execution feature to roon front end
Sun Apr 25 17:42:33 2021 -0700 44ee4db :
   Improve finding Python site-packages/roonapi installation directory
Sun Apr 25 14:34:24 2021 -0700 31066f1 :
   Updated patched roonapi.py for Python Roon API version 0.0.36
Sun Apr 25 14:28:07 2021 -0700 f084ae1 :
   Updated patch for Python Roon API version 0.0.36
Sun Apr 25 11:41:38 2021 -0700 83a47b6 :
   Update roonapi.py patched file to version 0.0.35
Sat Apr 24 16:40:31 2021 -0700 91cfce0 :
   Updated Python scripts to find output_id for zone using new group features
Sat Apr 24 14:15:45 2021 -0700 a69a99a :
   Removed get_zones, no longer used
Sat Apr 24 13:04:26 2021 -0700 149cd1e :
   Display grouped zone info when listing zones
Sat Apr 24 11:11:31 2021 -0700 758fd71 :
   Update pyroon patch for version 0.0.35
Thu Apr 22 10:55:09 2021 -0700 bed0790 :
   Updated pyroon patch for 0.0.34 release of pyroon. No functional change.
Sat Apr 17 15:31:45 2021 -0700 0c0eca9 :
   README for roon-web-controller patches
Sat Apr 17 14:33:19 2021 -0700 b5f7fdc :
   Add patches to the roon-web-controller project
Sat Apr 17 10:36:20 2021 -0700 5b00d97 :
   Clarified file descriptions
Fri Apr 16 10:58:39 2021 -0700 4606661 :
   Added already patched Python Roon API files and README with instructions
Thu Apr 15 09:21:54 2021 -0700 4ed436f :
   Fix links in subdir README Contents section
Thu Apr 15 09:18:17 2021 -0700 6c5a828 :
   Fix links to files in Contents
Thu Apr 15 09:04:40 2021 -0700 cd668fd :
   Fix links to subdirs in Contents listing
Thu Apr 15 08:57:12 2021 -0700 c8ab1e6 :
   Format READMEs, add table of contents
Wed Apr 14 14:57:40 2021 -0700 4d1424c :
   Check for patch in PATH
Wed Apr 14 13:37:50 2021 -0700 25ee2d2 :
   Update usage with tags options
Wed Apr 14 13:33:31 2021 -0700 9ffc2fd :
   Inline links
Wed Apr 14 13:31:36 2021 -0700 62e8f85 :
   Markdown enclosure for links
Wed Apr 14 13:27:20 2021 -0700 de7ef1d :
   Formatting changes to README
Wed Apr 14 13:24:41 2021 -0700 599450f :
   Added Troubleshooting section to README
Mon Apr 12 15:20:35 2021 -0700 6fbf8e3 :
   Added list tags feature, do not hardcode defaults but get them from ini
Wed Apr 7 17:42:13 2021 -0700 df400ef :
   Do not log error when searching for media, if none found report that
Sun Apr 4 16:12:17 2021 -0700 245afcd :
   Add note on specifying media names that contain spaces
Sun Apr 4 14:30:36 2021 -0700 0e7e901 :
   Format closing installation message for readability
Sun Apr 4 14:20:34 2021 -0700 0c78205 :
   Note about authorizing extension on first run, add quotes around ROON_ZONE setting as Roon zone output names can have spaces
Sun Apr 4 14:12:28 2021 -0700 c95f979 :
   play_media returns a boolean, don't try to iterate it
Sun Apr 4 13:55:39 2021 -0700 a94a712 :
   Set default zone in install script
Sun Apr 4 12:54:59 2021 -0700 47634f0 :
   Add bold formatting of authorization message
Sun Apr 4 12:31:44 2021 -0700 bf16575 :
   Unusual behavior with output from get_core_ip
Sun Apr 4 12:18:49 2021 -0700 ad065f5 :
   Fix errors in uninstall.sh script
Sun Apr 4 12:12:02 2021 -0700 06e18e1 :
   Change location of Roon Command Line python scripts from /Users/doctorwhen/Roon to /Users/doctorwhen/RoonCommandLine, add uninstall.sh removal script
Sun Apr 4 11:21:55 2021 -0700 d6561a4 :
   Filter out logging messages during installation/setup
Sun Apr 4 11:12:42 2021 -0700 e120316 :
   Improve get_core_ip.py output processing to set roon_api.ini IP entry correctly in all circumstances
Sun Apr 4 09:33:13 2021 -0700 23b0f09 :
   Rename patch, apply patch during install.sh
Sun Apr 4 08:53:42 2021 -0700 4ae4eac :
   Clarified installation instructions wrt Python 3 and pip
Sat Apr 3 15:33:49 2021 -0700 1c2dcd2 :
   Update links still using 'Roon/' to 'RoonCommandLine'
Sat Apr 3 14:28:40 2021 -0700 da6e83b :
   Check Python global site dirs if roonapi module not found in user site dir
Sat Apr 3 14:03:23 2021 -0700 0d5a54b :
   Use python to try and locate the installed roonapi module
Sat Apr 3 11:55:37 2021 -0700 6c7c0b8 :
   Update README with releases download url for repos
Sat Apr 3 10:39:31 2021 -0700 f4dd8b2 :
   Scrubbed references to the Scripts repository. RoonCommandLine is now its own repo
Fri Apr 2 14:42:40 2021 -0700 550fb7e :
   Improved introductory overview in Roon/README.md
Fri Apr 2 14:26:16 2021 -0700 3866066 :
   Added LICENSE and NOTICE to Contents
Fri Apr 2 14:23:01 2021 -0700 0de911f :
   Added licensing and copyright notice, updated INSTALL instructions
Fri Apr 2 13:48:32 2021 -0700 00bad41 :
   Add note about partial match media playback to README
Fri Apr 2 12:19:07 2021 -0700 bbfa2fa :
   If play media not found then search for a partial match. If a single partial match is returned then play that
Fri Apr 2 10:29:53 2021 -0700 bc400bb :
   Updated README with latest usage message
Fri Apr 2 10:20:56 2021 -0700 71693d7 :
   Added play_album capability to play a specified album by album name
Fri Apr 2 09:09:05 2021 -0700 99daeb3 :
   Move settings into .pyroonconf and automate detection of settings in install, add listing of albums and genres
Thu Apr 1 15:19:32 2021 -0700 17cb48f :
   Added notes on applying my Python Roon API patches
Thu Apr 1 13:40:28 2021 -0700 ee33e68 :
   Another attempt to format usage message
Thu Apr 1 12:43:24 2021 -0700 74953a0 :
   Attempt to format usage message
Thu Apr 1 12:42:28 2021 -0700 1a2b015 :
   Added to installation notes
Thu Apr 1 12:33:52 2021 -0700 e2b9403 :
   Fleshed out README with installation and usage notes
Thu Apr 1 10:18:08 2021 -0700 44a4e53 :
   Add list_artists scripts to Contents in READMEs
Thu Apr 1 09:55:21 2021 -0700 d0b70fc :
   Add support for listing artists and zones by search term match
Wed Mar 31 17:01:26 2021 -0700 8a13fbb :
   Added patches to Python Roon API to support new method for retrieving a list of Roon objects that match a search criteria
Mon Mar 29 17:45:29 2021 -0700 af3ba14 :
   Added support for playing a specified playlist
Mon Mar 29 17:06:55 2021 -0700 0a29b8c :
   Add entry for usage.txt to README
Mon Mar 29 17:05:12 2021 -0700 d3b7118 :
   Added roon usage message text file
Mon Mar 29 16:59:31 2021 -0700 ebe927f :
   Added playlist todo scripts
Mon Mar 29 15:00:10 2021 -0700 fcba0d5 :
   Added some early versions of scripts to be implemented when the api supports it
Mon Mar 29 14:04:09 2021 -0700 1771e21 :
   Add support for shuffle and repeat commands
Mon Mar 29 13:50:15 2021 -0700 142d3f1 :
   Renamed roonapi.ini to roon_api.ini and forgot to change it in the Python scripts. Sheesh.
Mon Mar 29 13:23:40 2021 -0700 037a05d :
   Deleted scripts no longer needed after zone_command processes all commands
Mon Mar 29 13:15:36 2021 -0700 93d1c86 :
   Handle zone commands in a single script
Mon Mar 29 12:25:52 2021 -0700 5302c52 :
   Deleted play_tull scripts, added commands for play and pause in a zone
Mon Mar 29 11:41:13 2021 -0700 8befe1f :
   Add option and scripts to list available Roon Zones
Mon Mar 29 08:48:12 2021 -0700 6c9640b :
   Added an install.sh convenience installation script, updated READMEs
Sun Mar 28 16:44:05 2021 -0700 526e27b :
   Make a nicer usage message
Sun Mar 28 16:24:49 2021 -0700 427e559 :
   Dynamically set the Roon Zone in /Users/doctorwhen/.roonzone
Sun Mar 28 11:35:42 2021 -0700 7fe5c8a :
   Added a configuration file, roon_api.ini, in which default values are stored
Sun Mar 28 10:39:19 2021 -0700 df55657 :
   Created some initial installation instructions for the Roon API scripts
Sun Mar 28 10:19:36 2021 -0700 3684089 :
   Add support for playing by genre, play tag not yet working
Sun Mar 28 08:15:05 2021 -0700 f45796d :
   Cleanup roon frontend script
Sat Mar 27 16:56:38 2021 -0700 191ef5f :
   Add front-end script 'roon' to run on systems that can SSH in to the Roon API server, replace exact match of target_zone with substring check to enable playing in grouped zones
Sat Mar 27 13:07:28 2021 -0700 c6a2df1 :
   Add script support for playing next/previous track and mute/unmute in specified zone
Fri Mar 26 14:10:28 2021 -0700 f11f6c8 :
   Added History section to README
Fri Mar 26 13:48:22 2021 -0700 9f65e0c :
   Add argument processing for zone selection, add scripts for stopping playback in a zone
Fri Mar 26 10:05:32 2021 -0700 cb6a2ef :
   Added scripts to control Roon via the Roon API
