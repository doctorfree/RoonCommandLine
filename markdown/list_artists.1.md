---
title: LIST_ARTISTS
section: 1
header: User Manual
footer: list_artists 2.0.1
date: December 05, 2021
---
# NAME
list_artists - List Roon Library Artists

# SYNOPSIS
**list_artists** [ ARTIST ] [ EXARTIST ]

# DESCRIPTION
Lists Roon Library artists matching the specified artist name or substring. Optionally, a second argument can be provided which specifies an exclusion string. Artists whose name includes the exclusion string will not be listed.

# COMMAND LINE OPTIONS
**ARTIST**
: Provide an artist name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library artist names matching the provided artist name or containing the substring will be returned

**EXARTIST**
: Provide an artist exclusion string, in quotes if it contains spaces. No Roon library artist names including the provided artist exclusion string will be listed

# EXAMPLES
**list_artists Young**
: Will return a list of Roon library artist names, one per line, that contain the string "Young"

**list_artists Young Neil**
: Will return a list of Roon library artist names, one per line, that contain the string "Young" but do not contain the string "Neil"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_ARTISTS is distributed under an Open Source license.
See the file LICENSE in the LIST_ARTISTS source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_ARTISTS and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/list_artists.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/list_artists.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: list_artists.py [-h] [-a ARTIST] [-x EXARTIST] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -a ARTIST, --artist ARTIST
                        artist search term
  -x EXARTIST, --exartist EXARTIST
                        artist exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
