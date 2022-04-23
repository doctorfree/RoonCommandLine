---
title: NOW_PLAYING
section: 1
header: User Manual
footer: now_playing 2.0.1
date: April 24, 2022
---
# NAME
now_playing - Get track, artist, and album now playing in specified Roon zone

# SYNOPSIS
**now_playing** [ **-z** ZONE ]

# DESCRIPTION
Retrieves now playing information on specified zone or all zones if no zone is specified. If a zone is specified using the `-z zone` option then now playing information on only that zone is displayed.

# COMMAND LINE OPTIONS

**-z ZONE**
: If a *ZONE* is specified then retrieve now playing information for that zone only. If no *ZONE* is sprovided on the command line then retrieve now playing information for all zones.

# EXAMPLES
**now_playing**
: Displays now playing info for all zones

**now_playing -z Kitchen**
: Displays now playing info for the Roon zone named "Kitchen"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
NOW_PLAYING is distributed under an Open Source license.
See the file LICENSE in the NOW_PLAYING source distribution
for information on terms &amp; conditions for accessing and
otherwise using NOW_PLAYING and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

