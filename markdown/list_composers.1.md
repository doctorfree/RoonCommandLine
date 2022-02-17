---
title: LIST_COMPOSERS
section: 1
header: User Manual
footer: list_composers 2.0.1
date: February 13, 2022
---
# NAME
list_composers - List Roon Library Composers

# SYNOPSIS
**list_composers** [ COMPOSER ] [ EXCOMPOSER ]

# DESCRIPTION
Lists Roon Library composers matching the specified composer name or substring

# COMMAND LINE OPTIONS
**COMPOSER**
: Provide an composer name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library composer names matching the provided composer name or containing the substring will be returned

**EXCOMPOSER**
: Provide a composer exclusion string, in quotes if it contains spaces. No Roon library composer names including the provided composer exclusion string will be listed

# EXAMPLES
**list_composers Bach**
: Will return a list of Roon library composer names, one per line, that contain the string "Bach"

**list_composers Bach Burt**
: Will return a list of Roon library composer names, one per line, that contain the string "Bach" but not the string "Burt"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_COMPOSERS is distributed under an Open Source license.
See the file LICENSE in the LIST_COMPOSERS source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_COMPOSERS and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/list_composers.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/list_composers.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: list_composers.py [-h] [-c COMPOSER] [-x EXCOMPOSER] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -c COMPOSER, --composer COMPOSER
                        composer search term
  -x EXCOMPOSER, --excomposer EXCOMPOSER
                        composer exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
