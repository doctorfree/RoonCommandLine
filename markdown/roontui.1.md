---
title: ROONTUI
section: 1
header: User Manual
footer: roontui 2.1.2
date: May 20, 2024
---
# NAME
roontui - Enable/Disable volume fading in a Roon zone

# SYNOPSIS
**roontui** [ **-b|--binary** BINARY ] [ **-c|--config** CONFIG ] [ **-i|--ip** IP ] [ **-p|--port** PORT ] [ **-l|--log** LOG ] [ **-v|--verbose** ] [ **-u|--no-unicode-symbols** ] [ **-U|--upgrade** ] [ **-h|--help** ] [ **-V|--version** ]

# DESCRIPTION
The **roon** command can be used to install the [Roon terminal user interface](https://github.com/TheAppgineer/roon-tui) (**roon-tui**), a project maintained by **TheAppgineer** organization, authors of the [Roon Extension Manager](https://github.com/TheAppgineer/roon-extension-manager).

Install **roon-tui** with the command **roon -I** or via the **RoonCommandLine** menu interface.

The **RoonCommandLine** installation of **roon-tui** installs the binary as **~/.local/bin/roon-tui** or **/opt/homebrew/bin/roon-tui** on **macOS**

**RoonCommandLine** includes a front-end wrapper for **roon-tui**, installed as **/usr/local/Roon/bin/roontui** which serves to locate the **roon-tui** configuration file and log in **~/.config/roon-tui/**.

The **roon-tui** terminal user interface for Roon can be executed either with the wrapper, **roontui** or with **roon -O**. Executing **roon-tui** directly will attempt to use and write the configuration and log files in the directory where **roon-tui** is located. Recommended usage is either with **roontui** or, if no options are required, **roon -O**.

# COMMAND LINE OPTIONS
**-b, --binary BINARY**
: Path to the roon-tui binary [default binary location:          **~/.local/bin/roon-tui**]

**-c, --config CONFIG**
: Path to the config.json file [default configuration location:   **~/.config/roon-tui/config.json**]

**-i, --ip IP**
: IP address of the Server, disables server discovery

**-p, --port PORT**
: Port number of the Server [default: 9330]

**-l, --log LOG**
: Path to the log file [default log file location:        **~/.config/roon-tui/roon-tui.log**]

**-v, --verbose**
: Enable verbose logging to file

**-u, --no-unicode-symbols**
: Disable the use of Unicode symbols

**-U, --upgrade**
: Upgrade roon-tui if a newer version is available and exit

**-h, --help**
: Print help

**-V, --version**
: Print version

# KEY BINDINGS
## Global (useable in all views)
|||
|---|---|
|Tab|Switch between views
|Shift-Tab|Reverse switch between views
|Ctrl-z|Open zone selector
|Ctrl-g|Open zone grouping
|Ctrl-Space, Ctrl-p|Play / Pause
|Ctrl-e|Pause at End of Track
|Ctrl-&uarr;|Volume up
|Ctrl-&darr;|Volume down
|Ctrl-&rarr;|Next track
|Ctrl-&larr;|Previous track
|Ctrl-q|Toggle through Queue Modes
|Ctrl-a|Append tracks according Queue Mode
|Ctrl-h|Open help screen
|Ctrl-c|Quit
## Common list controls
|||
|---|---|
|&uarr;|Move up
|&darr;|Move down
|Home|Move to top
|End|Move to bottom
|Page Up|Move page up
|Page Down|Move page down
## Browse View
|||
|---|---|
|Enter|Select
|Esc|Move level up
|Ctrl-Home|Move to top level
|F5|Refresh
|a...z|Multi-character jump to item
|Backspace|Step back in multi-character jump
## Queue View
|||
|---|---|
|Enter|Play from here
## Now Playing View
|||
|---|---|
|m|Mute
|u|Unmute
|+|Volume up
|-|Volume down
|r|Toggle Repeat
|s|Toggle Shuffle
## Zone Select Popup
|||
|---|---|
|Enter|Select Zone
|Esc|Back to previous view
|Delete|Delete inactive preset
## Zone Grouping Popup
|||
|---|---|
|Space|Add or remove output from group
|Enter|Activate Grouping
|s|Save as preset
|Esc|Back to previous view
## Text Input
|||
|---|---|
|Enter|Confirm input
|Esc|Cancel input

# AUTHORS
**roontui** written by Ronald Record github@ronrecord.com

**roon-tui** written by Appineer Github Organization

# LICENSING
ROONTUI is distributed under an Open Source license.
See the file LICENSE in the ROONTUI source distribution
for information on terms &amp; conditions for accessing and
otherwise using ROONTUI and for a DISCLAIMER OF ALL WARRANTIES.

The **roon-tui** project at https://github.com/TheAppgineer/roon-tui
is distributed under the MIT License and Copyright (c) 2023 The Appgineer.

# BUGS
Submit **RoonCommandLine** bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

Submit **roon-tui** bug reports online at: https://github.com/TheAppgineer/roon-tui/issues

# SEE ALSO
**roon_fade**(1), **get_core_ip**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **now_playing**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

