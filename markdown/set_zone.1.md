---
title: SET_ZONE
section: 1
header: User Manual
footer: set_zone 2.0.1
date: December 05, 2021
---
# NAME
set_zone - Set the default Roon playback Zone

# SYNOPSIS
**set_zone** [ ZONE ]

# DESCRIPTION
Sets the default Roon playback zone. Current playback, if active, is unaffected. Subsequent Roon commands, if no zone is specified on the command line, will take effect in the specified default Roon zone. If the Roon zone specified on the command line does not match a configured Roon zone exactly then the first Roon zone name containing the *ZONE* substring will be set as the default Roon zone.

# COMMAND LINE OPTIONS
**ZONE**
: Set the default Roon playback zone to *ZONE*

# EXAMPLES
**set_zone HomePod**
: Will set the default Roon zone to "HomePod" if a zone by that name exists. If no zone named "HomePod" exists then Roon zones are searched for a zone name containing the string "HomePod" and the first matching Roon zone name is set as the default Roon zone.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
SET_ZONE is distributed under an Open Source license.
See the file LICENSE in the SET_ZONE source distribution
for information on terms &amp; conditions for accessing and
otherwise using SET_ZONE and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

