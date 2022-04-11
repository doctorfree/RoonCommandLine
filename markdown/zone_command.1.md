---
title: ZONE_COMMAND
section: 1
header: User Manual
footer: zone_command 2.0.1
date: December 05, 2021
---
# NAME
zone_command - Execute a Roon command in a specified Roon Zone

# SYNOPSIS
**zone_command** [ **-c** COMMAND ] [ **-z** ZONE ]

# DESCRIPTION
Executes the specified Roon command in the given Roon zone. If no *-c COMMAND* is provided then the "**play**" command is used. If no *ZONE* is provided then the configured default Roon zone is used. **COMMAND** can be one of "*play*", "*pause*", "*pause_all*", "*next*", "*previous*", "*mute*", "*unmute*", "*repeat*", "*unrepeat*", "*shuffle*", or "*unshuffle*". The *ZONE* name provided on the command line must match exactly the configured Roon Zone name in which to execute the Roon command. Partial matching is not yet implemented.

# COMMAND LINE OPTIONS
**-c COMMAND**
: Execute Roon command *COMMAND* in the specified zone

**-z zone**
: Execute specified Roon command in Roon zone *zone*

# EXAMPLES
**zone_command -c mute -z HomePod**
: Toggles Mute/Unmute playback in the Roon Zone named "HomePod"

**zone_command -c pause -z HomePod**
: Pause playback in the Roon Zone named "HomePod"

**zone_command -c pause_all**
: Pause playback in all Roon zones

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
ZONE_COMMAND is distributed under an Open Source license.
See the file LICENSE in the ZONE_COMMAND source distribution
for information on terms &amp; conditions for accessing and
otherwise using ZONE_COMMAND and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/zone_command.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/zone_command.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: zone_command.py [-h] [-c COMMAND] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -c COMMAND, --command COMMAND
                        command selection
  -z ZONE, --zone ZONE  zone selection
~~~~
