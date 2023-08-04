---
title: GET_ZONE_REMAINING
section: 1
header: User Manual
footer: get_zone_remaining 2.0.1
date: December 05, 2022
---
# NAME
get_zone_remaining - Get remaining time in seconds for track playing in Roon Zone

# SYNOPSIS
**get_zone_remaining** [ **-z** ZONE ]

# DESCRIPTION
Retrieves remaining time in seconds for track playing in specified zone or default zone if no zone is specified.

# COMMAND LINE OPTIONS
**-z ZONE**
: If a *ZONE* is specified then retrieve remaining time in seconds for that zone. If no *ZONE* is sprovided on the command line then retrieve remaining time for the default zone.

# EXAMPLES
**get_zone_remaining**
: Displays remaining time for the default zone

**get_zone_remaining -z Kitchen**
: Displays remaining playing time for the Roon zone named "Kitchen"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
GET_ZONE_REMAINING is distributed under an Open Source license.
See the file LICENSE in the GET_ZONE_REMAINING source distribution
for information on terms &amp; conditions for accessing and
otherwise using GET_ZONE_REMAINING and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **now_playing**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

