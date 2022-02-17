---
title: LIST_RADIO
section: 1
header: User Manual
footer: list_radio 2.0.1
date: December 05, 2021
---
# NAME
list_radio - List Roon Live Radio Channels

# SYNOPSIS
**list_radio** [ RADIO ]

# DESCRIPTION
Lists Roon Live Radio channels matching the specified radio station name or substring

# COMMAND LINE OPTIONS
**RADIO**
: Provide a radio station name, in quotes if it contains spaces, or a case-sensitive substring. All Roon radio station names matching the provided radio station name or containing the substring will be returned

# EXAMPLES
**list_radio WKRP**
: Will return a list of Roon radio station names, one per line, that contain the string "WKRP"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_RADIO is distributed under an Open Source license.
See the file LICENSE in the LIST_RADIO source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_RADIO and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/list_radio.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/list_radio.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: list_radio.py [-h] [-r RADIO] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -r RADIO, --radio RADIO
                        radio search term
  -z ZONE, --zone ZONE  zone selection
~~~~
