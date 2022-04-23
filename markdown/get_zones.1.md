---
title: GET_ZONES
section: 1
header: User Manual
footer: get_zones 2.0.1
date: December 05, 2021
---
# NAME
get_zones - Get the Roon Zones

# SYNOPSIS
**get_zones** [ ZONE ]

# DESCRIPTION
Retrieves a comma separated list of Roon zones. If no zone is specified, *get_zones* returns a comma separated list of all zones.

# COMMAND LINE OPTIONS
**ZONE**
: If a zone is specified on the command line then only that zone is returned. A case-sensitive substring can be used to retrieve all zone names that contain that string.

# EXAMPLES
**get_zones HomePod**
: Retrieves a comma separated list of all Roon zone names containing the string "HomePod"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
GET_ZONES is distributed under an Open Source license.
See the file LICENSE in the GET_ZONES source distribution
for information on terms &amp; conditions for accessing and
otherwise using GET_ZONES and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **now_playing**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

