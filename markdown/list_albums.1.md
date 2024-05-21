---
title: LIST_ALBUMS
section: 1
header: User Manual
footer: list_albums 2.0.1
date: December 05, 2021
---
# NAME
list_albums - List Roon Library Albums

# SYNOPSIS
**list_albums** [ ALBUM ] [ EXALBUM ]

# DESCRIPTION
Lists Roon Library albums matching the specified album name or substring. Optionally, an exclusion string can be provided as the second argument. Album names containing the exclusion string will not be listed.

# COMMAND LINE OPTIONS
**ALBUM**
: Provide an album name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library album names matching the provided album name or containing the substring will be listed

**EXALBUM**
: Provide an album exclusion string, in quotes if it contains spaces. No Roon library album names including the provided album exclusion string will be listed

# EXAMPLES
**list_albums Moon**
: Will return a list of Roon library album names, one per line, that contain the string "Moon"

**list_albums Moon Light**
: Will return a list of Roon library album names, one per line, that contain the string "Moon" but do not contain the string "Light"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_ALBUMS is distributed under an Open Source license.
See the file LICENSE in the LIST_ALBUMS source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_ALBUMS and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/list_albums.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/list_albums.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: list_albums.py [-h] [-a ALBUM] [-x EXALBUM] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -a ALBUM, --album ALBUM
                        album search term
  -x EXALBUM, --exalbum EXALBUM
                        album exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
