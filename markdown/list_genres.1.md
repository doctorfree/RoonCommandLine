---
title: LIST_GENRES
section: 1
header: User Manual
footer: list_genres 2.0.1
date: December 05, 2021
---
# NAME
list_genres - List Roon Library Genres

# SYNOPSIS
**list_genres** [ GENRE ] [ EXGENRE ]

# DESCRIPTION
Lists Roon Library genres matching the specified genre name or substring

# COMMAND LINE OPTIONS
**GENRE**
: Provide an genre name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library genre names matching the provided genre name or containing the substring will be returned

**EXGENRE**
: Provide a genre exclusion string, in quotes if it contains spaces. No Roon library genre names including the provided genre exclusion string will be listed

# EXAMPLES
**list_genres Rock**
: Will return a list of Roon library genre names, one per line, that contain the string "Rock"

**list_genres Rock Pop**
: Will return a list of Roon library genre names, one per line, that contain the string "Rock" but not "Pop"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_GENRES is distributed under an Open Source license.
See the file LICENSE in the LIST_GENRES source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_GENRES and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/list_genres.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/list_genres.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: list_genres.py [-h] [-g GENRE] [-x EXGENRE] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -g GENRE, --genre GENRE
                        genre search term
  -x EXGENRE, --exgenre EXGENRE
                        genre exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
