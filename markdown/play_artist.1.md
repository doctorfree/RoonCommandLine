---
title: PLAY_ARTIST
section: 1
header: User Manual
footer: play_artist 2.0.1
date: December 05, 2021
---
# NAME
play_artist - Play Roon Library Artist

# SYNOPSIS
**play_artist** [ -s ] [ -z ZONE ] [ ARTIST ] [ EXARTIST ]

# DESCRIPTION
Plays the Roon Library artist named *ARTIST*. If no library artist name matches *ARTIST* exactly, search for Roon Library artist whose name contains the case-sensitive string *ARTIST*. If there is a match on the search substring then *play_artist* will play that artist. If more than one Roon Library artist name matches the search substring then *play_artist* will return a list of matching artist names and play the first one in the list.

# COMMAND LINE OPTIONS
**-s**
: Play in shuffled mode

**-z ZONE**
: Specify the Roon Zone in which to play. If no zone is specified the default zone will be used.  '-z default' indicates the default zone, '-z last' the last zone used

**ARTIST**
:  Provide an artist name, in quotes if it contains spaces, or a case-sensitive substring. A Roon library artist name matching the provided artist name or containing the substring will be played if a match is found.

**EXARTIST**
: Provide an artist exclusion string, in quotes if it contains spaces. No Roon library artist names including the provided artist exclusion string will be played

# EXAMPLES
**play_artist Young**
: Will play Roon library artist name "Young" if it exists. If not then it will play the Roon library artist whose name contains the string "Young" if a match is found.

**play_artist Young Neil**
: Will play Roon library artist name "Young" if it exists. If not then it will play the Roon library artist whose name contains the string "Young" but not "Neil" if a match is found.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_ARTIST is distributed under an Open Source license.
See the file LICENSE in the PLAY_ARTIST source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_ARTIST and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/play_artist.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/play_artist.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: play_artist.py [-h] [-a ARTIST] [-x EXARTIST] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -a ARTIST, --artist ARTIST
                        artist selection
  -x EXARTIST, --exartist EXARTIST
                        artist exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
