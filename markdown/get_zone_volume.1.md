---
title: GET_ZONE_VOLUME
section: 1
header: User Manual
footer: get_zone_volume 2.0.1
date: December 05, 2022
---
# NAME
get_zone_volume - Get current volume level and range for specified Roon Zone

# SYNOPSIS
**get_zone_volume** [**-g**] [**-n**] [ **-z** ZONE ]

# DESCRIPTION
Retrieves the current volume level and volume range of specified zone or default zone if no zone is specified. If the zone is grouped, and `-g` is provided as a command line argument, then all grouped zones are queried for volume levels and ranges. The `-n` switch indicates return only the volume level value without description or other values.

# COMMAND LINE OPTIONS
**-g**
: If *-g* is specified then retrieve volume levels and volume ranges for all zones in a grouped zone. If no *-g* is provided on the command line then retrieve volume level and range for only the specified zone regardless of whether it is grouped.

**-n**
: If *-n* is specified then only return the volume level for specified zone or zone grouping.

**-z ZONE**
: If a *ZONE* is specified then retrieve volume level and volume range for that zone. If no *ZONE* is provided on the command line then retrieve volume level and range for the default zone.

# EXAMPLES
**get_zone_volume**
: Displays volume level and volume range for the default zone

**get_zone_volume -z Kitchen**
: Displays volume level and volume range for the Roon zone named "Kitchen"

**get_zone_volume -n -z Kitchen**
: Displays only the volume level for the Roon zone named "Kitchen"

**get_zone_volume -g -z Kitchen**
: Displays volume level and volume range for the Roon zone named "Kitchen" and any grouped zones

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
GET_ZONE_VOLUME is distributed under an Open Source license.
See the file LICENSE in the GET_ZONE_VOLUME source distribution
for information on terms &amp; conditions for accessing and
otherwise using GET_ZONE_VOLUME and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **now_playing**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

