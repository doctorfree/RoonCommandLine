---
title: LIST_TAGS
section: 1
header: User Manual
footer: list_tags 2.0.1
date: December 05, 2021
---
# NAME
list_tags - List Roon Library Tags

# SYNOPSIS
**list_tags** [ -q ] [ -z ZONE ] [ TAG ]

# DESCRIPTION
Lists Roon Library tags matching the specified tag name or substring

# COMMAND LINE OPTIONS
**-q**
: Specifies quiet output

**-z ZONE**
: Specifies the Roon zone, '-z default' indicates the default zone, '-z last' the last zone used

**TAG**
: Provide an tag name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library tag names matching the provided tag name or containing the substring will be returned

# EXAMPLES
**list_tags Prog**
: Will return a list of Roon library tag names, one per line, that contain the string "Prog"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_TAGS is distributed under an Open Source license.
See the file LICENSE in the LIST_TAGS source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_TAGS and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/list_tags.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/list_tags.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: list_tags.py [-h] [-t TAG] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -t TAG, --tag TAG     tag search term
  -z ZONE, --zone ZONE  zone selection
~~~~
