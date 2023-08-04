---
title: PLAY_PLAYLIST
section: 1
header: User Manual
footer: play_playlist 2.0.1
date: December 05, 2021
---
# NAME
play_playlist - Play Roon Library Playlist

# SYNOPSIS
**play_playlist** [ PLAYLIST ] [ EXPLAYLIST ]

# DESCRIPTION
Plays the Roon Library playlist named *PLAYLIST*. Search for Roon Library playlists whose name contains the case-sensitive string *PLAYLIST*. If there is a match on the search substring then *play_playlist* will play the first playlist returned. If more than one Roon Library playlist name matches the search substring then *play_playlist* will also return a list of matching playlist names.

# COMMAND LINE OPTIONS
**PLAYLIST**
:  Provide an playlist name, in quotes if it contains spaces, or a case-sensitive substring. A Roon library playlist name matching the provided playlist name or containing the substring will be played if a match is found.

**EXPLAYLIST**
: Provide a playlist exclusion string, in quotes if it contains spaces. No Roon library playlist names including the provided playlist exclusion string will be played

# EXAMPLES
**play_playlist Mood**
: Will play the Roon library playlist whose name contains the string "Mood". If more than one playlist name matches, the first returned will be played.

**play_playlist Best Gold**
: Will play the Roon library playlist whose name contains the string "Best" but not "Gold". If more than one playlist name matches, the first returned will be played.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_PLAYLIST is distributed under an Open Source license.
See the file LICENSE in the PLAY_PLAYLIST source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_PLAYLIST and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/play_playlist.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/play_playlist.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: play_playlist.py [-h] [-p PLAYLIST] [-x EXPLAYLIST] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -p PLAYLIST, --playlist PLAYLIST
                        playlist selection
  -x EXPLAYLIST, --explaylist EXPLAYLIST
                        playlist exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
