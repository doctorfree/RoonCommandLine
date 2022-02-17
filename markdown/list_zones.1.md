---
title: LIST_ZONES
section: 1
header: User Manual
footer: list_zones 2.0.1
date: December 05, 2021
---
# NAME
list_zones - List Roon Zones

# SYNOPSIS
**list_zones** [ ZONE ]

# DESCRIPTION
Lists all Roon zones, zone groupings, and configured zone grouping presets. If a zone is specified on the command line then only that zone and its groupings will be retrieved. A case-sensitive substring can be used as the ZONE argument in which case all zones that contain that substring along with their groupings will be returned.

# COMMAND LINE OPTIONS
**ZONE**
: The zone name or case-sensitive substring to match

# EXAMPLES
**list_zones HomePod**
: Will return a list of zones and zone groupings for all zone names containing the string "HomePod"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_ZONES is distributed under an Open Source license.
See the file LICENSE in the LIST_ZONES source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_ZONES and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/list_zones.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/list_zones.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: list_zones.py [-h] [-g] [-i] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -g, --get             Get a comma separated list of zones
  -i, --info            Get zone info
  -z ZONE, --zone ZONE  Zone selection
~~~~
