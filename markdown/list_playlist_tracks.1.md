---
title: LIST_PLAYLIST_TRACKS
section: 1
header: User Manual
footer: list_playlist_tracks 2.0.1
date: November 14, 2022
---
# NAME
list_playlist_tracks - List Roon Library Playlist Tracks

# SYNOPSIS
**list_playlist_tracks** [ PLAYLIST ] [ TRACK ] [ EXPLAYLIST ] [ EXTRACK ]

# DESCRIPTION
Lists Roon Library playlist's tracks matching the specified track name or substring. This command is invoked by "roon -l playtracks -p playlist [-T track] [-x explaylist] [-X extrack]".

# COMMAND LINE OPTIONS
**PLAYLIST**
: Provide a playlist name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library playlist names matching the provided playlist name or containing the substring will be searched for tracks

**TRACK**
: Provide a track name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library track names matching the provided track name or containing the substring will be listed.

**EXPLAYLIST**
: Provide an playlist exclusion string, in quotes if it contains spaces. No Roon library playlist names including the provided playlist exclusion string will be searched

**EXTRACK**
: Provide a track exclusion string, in quotes if it contains spaces. No Roon library track names including the provided track exclusion string will be listed

# EXAMPLES
**list_playlist_track FavPop Yesterday**
: Will list the tracks titles containing the string "Yesterday" by the playlists whose name contains "FavPop"

**list_playlist_track FavPop Love foo "Love version"**
: Will list the tracks titles containing the string "Love" but not the string "Love version" by the playlists whose name contains "FavPop" but not "foo"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_PLAYLIST_TRACKS is distributed under an Open Source license.
See the file LICENSE in the LIST_PLAYLIST_TRACKS source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_PLAYLIST_TRACKS and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_artist_tracks**(1), **list_albums**(1), **list_playlist_albums**(1), **list_playlists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_playlists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_playlist**(1), **play_playlist_album**(1), **play_playlist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_playlist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/list_playlist_tracks.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/list_playlist_tracks.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: list_playlist_tracks.py [-h] [-t TRACK] [-p PLAYLIST] [-X EXTRACK]
                             [-x EXPLAYLIST] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -t TRACK, --track TRACK
                        track search term
  -p PLAYLIST, --playlist PLAYLIST
                        playlist search term
  -X EXTRACK, --extrack EXTRACK
                        track exclude search term
  -x EXPLAYLIST, --explaylist EXPLAYLIST
                        playlist exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
