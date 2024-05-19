---
title: LIST_ALBUM_TRACKS
section: 1
header: User Manual
footer: list_album_tracks 2.0.1
date: May 18, 2024
---
# NAME
list_album_tracks - List Roon Library Tracks on specified Album

# SYNOPSIS
**list_album_tracks** [ ALBUM ] [ TRACK ] [ EXALBUM ] [ EXTRACK ]

# DESCRIPTION
Lists Roon Library album's tracks matching the specified track name or substring. This command is invoked by "roon -l albtracks -a album [-T track] [-x exalbum] [-X extrack]".

# COMMAND LINE OPTIONS
**ALBUM**
: Provide an album name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library album names matching the provided album name or containing the substring will be searched for tracks

**TRACK**
: Provide a track name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library track names matching the provided track name or containing the substring will be listed.

**EXALBUM**
: Provide an album exclusion string, in quotes if it contains spaces. No Roon library album names including the provided album exclusion string will be searched

**EXTRACK**
: Provide a track exclusion string, in quotes if it contains spaces. No Roon library track names including the provided track exclusion string will be listed

# EXAMPLES
**list_album_tracks "Beatles for Sale"**
: Will list the track titles on the albums whose name contains "Beatles for Sale"

**list_album_tracks Beatles Yesterday**
: Will list the tracks titles containing the string "Yesterday" on the albums whose name contains "Beatles"

**list_album_tracks Beatles Love foo "Love version"**
: Will list the tracks titles containing the string "Love" but not the string "Love version" on the albums whose name contains "Beatles" but not "foo"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_ALBUM_TRACKS is distributed under an Open Source license.
See the file LICENSE in the LIST_ALBUM_TRACKS source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_ALBUM_TRACKS and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_album_albums**(1), **list_albums**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_albums**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_album**(1), **play_album_album**(1), **play_album_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_album**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/list_album_tracks.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/list_album_tracks.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: list_album_tracks.py [-h] [-t TRACK] [-a ALBUM] [-X EXTRACK]
                             [-x EXALBUM] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -t TRACK, --track TRACK
                        track search term
  -a ALBUM, --album ALBUM
                        album search term
  -X EXTRACK, --extrack EXTRACK
                        track exclude search term
  -x EXALBUM, --exalbum EXALBUM
                        album exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
