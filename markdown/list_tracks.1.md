---
title: LIST_TRACKS
section: 1
header: User Manual
footer: list_tracks 2.0.1
date: May 28, 2024
---
# NAME
list_tracks - List Roon Library Tracks

# SYNOPSIS
**list_tracks** [-q] [-z ZONE] [TRACK] [EXCLUDE]

# DESCRIPTION
Lists Roon Library tracks matching the specified track name or substring. Optionally, an exclusion string can be provided as the second argument. Track names containing the exclusion string will not be listed.

# COMMAND LINE OPTIONS
**-q**
: specifies quiet output

**-z** 'ZONE'
: specifies the zone, '-z default' indicates the default zone, '-z last' the last zone used

**TRACK**
: Provide a track name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library track names matching the provided track name or containing the substring will be listed

**EXCLUDE**
: Provide a track exclusion string, in quotes if it contains spaces. No Roon library track names including the provided track exclusion string will be listed

# EXAMPLES
**list_tracks Moon**
: Will return a list of Roon library track names, one per line, that contain the string "Moon"

**list_tracks Moon Light**
: Will return a list of Roon library track names, one per line, that contain the string "Moon" but do not contain the string "Light"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_TRACKS is distributed under an Open Source license.
See the file LICENSE in the LIST_TRACKS source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_TRACKS and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine
