---
title: LIST_PLAYLISTS
section: 1
header: User Manual
footer: list_playlists 2.0.1
date: December 05, 2021
---
# NAME
list_playlists - List Roon Library Playlists

# SYNOPSIS
**list_playlists** [ PLAYLIST ] [ EXPLAYLIST ]

# DESCRIPTION
Lists Roon Library playlists matching the specified playlist name or substring

# COMMAND LINE OPTIONS
**PLAYLIST**
: Provide an playlist name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library playlist names matching the provided playlist name or containing the substring will be returned

**EXPLAYLIST**
: Provide a playlist exclusion string, in quotes if it contains spaces. No Roon library playlist names including the provided playlist exclusion string will be listed

# EXAMPLES
**list_playlists Mood**
: Will return a list of Roon library playlist names, one per line, that contain the string "Mood"

**list_playlists Guster Best**
: Will return a list of Roon library playlist names, one per line, that contain the string "Guster" but not "Best"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_PLAYLISTS is distributed under an Open Source license.
See the file LICENSE in the LIST_PLAYLISTS source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_PLAYLISTS and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/list_playlists.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/list_playlists.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: list_playlists.py [-h] [-p PLAYLIST] [-x EXPLAYLIST] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -p PLAYLIST, --playlist PLAYLIST
                        playlist search term
  -x EXPLAYLIST, --explaylist EXPLAYLIST
                        playlist exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
