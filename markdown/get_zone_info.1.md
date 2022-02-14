---
title: GET_ZONE_INFO
section: 1
header: User Manual
footer: get_zone_info 2.0.1
date: December 05, 2021
---
# NAME
get_zone_info - Get Roon Zone Info

# SYNOPSIS
**get_zone_info** [ **-l** ] [ ZONE ]

# DESCRIPTION
Retrieves information on specified/default zone(s)

# COMMAND LINE OPTIONS
**-l**
: Retrieve a comma separated list of the zone grouping for specified/default zone(s) 

**ZONE**
: If a *ZONE* is specified then retrieve info/grouping for that zone only. If no *ZONE* is sprovided on the command line then retrieve info/grouping for all zones.

# EXAMPLES
**get_zone_info -l**
: Retrieves a comma separated list of zone groupings for all zones

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
GET_ZONE_INFO is distributed under an Open Source license.
See the file LICENSE in the GET_ZONE_INFO source distribution
for information on terms &amp; conditions for accessing and
otherwise using GET_ZONE_INFO and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

