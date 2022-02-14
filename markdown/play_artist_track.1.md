---
title: PLAY_ARTIST_TRACK
section: 1
header: User Manual
footer: play_artist_track 2.0.1
date: February 13, 2022
---
# NAME
play_artist_track - Play Roon Library Track by Artist

# SYNOPSIS
**play_artist_track** [ ARTIST ] [ TRACK ]

# DESCRIPTION
Plays Roon Library artist's track matching the specified track name or substring. This command is invoked by "roon -a artist [-T track]".

# COMMAND LINE OPTIONS
**ARTIST**
: Provide an artist name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library artist names matching the provided artist name or containing the substring will be searched for tracks

**TRACK**
: Provide a track name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library track names matching the provided track name or containing the substring will be returned and the first one returned will be played.

# EXAMPLES
**play_artist_track Beatles Yesterday**
: Will play the first track returned in a list of all Roon library track names with titles containing the string "Yesterday" by the artists whose name contains "Beatles"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_ARTIST_TRACK is distributed under an Open Source license.
See the file LICENSE in the PLAY_ARTIST_TRACK source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_ARTIST_TRACK and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

