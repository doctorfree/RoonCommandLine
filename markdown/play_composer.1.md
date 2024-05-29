---
title: PLAY_COMPOSER
section: 1
header: User Manual
footer: play_composer 2.0.1
date: February 13, 2022
---
# NAME
play_composer - Play Roon Library Composer

# SYNOPSIS
**play_composer** [ -z ZONE ] [ COMPOSER ] [ EXCOMPOSER ]

# DESCRIPTION
Plays the Roon Library composer named *COMPOSER*. If no library composer name matches *COMPOSER* exactly, search for Roon Library composer whose name contains the case-sensitive string *COMPOSER*. If there is a match on the search substring then *play_composer* will play that composer. If more than one Roon Library composer name matches the search substring then *play_composer* will return a list of matching composer names.

# COMMAND LINE OPTIONS
**-z ZONE**
: Specify the Roon Zone in which to play. If no zone is specified the default zone will be used.  '-z default' indicates the default zone, '-z last' the last zone used

**COMPOSER**
:  Provide a composer name, in quotes if it contains spaces, or a case-sensitive substring. A Roon library composer name matching the provided composer name or containing the substring will be played if a match is found.

**EXCOMPOSER**
: Provide a composer exclusion string, in quotes if it contains spaces. No Roon library composer names including the provided composer exclusion string will be played

# EXAMPLES
**play_composer Mozart**
: Will play Roon library composer name "Mozart" if it exists. If not then it will play the Roon library composer whose name contains the string "Mozart" if only one match is found.

**play_composer Bach Burt**
: Will play Roon library composer composer whose name contains the string "Bach" but not "Burt". If more than one composer name matches these criteria, the first composer found will be played and a list of all matching composer names returned.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_COMPOSER is distributed under an Open Source license.
See the file LICENSE in the PLAY_COMPOSER source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_COMPOSER and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/play_composer.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/play_composer.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: play_composer.py [-h] [-c COMPOSER] [-x EXCOMPOSER] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -c COMPOSER, --composer COMPOSER
                        composer selection
  -x EXCOMPOSER, --excomposer EXCOMPOSER
                        composer exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
