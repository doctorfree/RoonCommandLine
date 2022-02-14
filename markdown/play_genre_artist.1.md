---
title: PLAY_GENRE_ARTIST
section: 1
header: User Manual
footer: play_genre_artist 2.0.1
date: February 13, 2022
---
# NAME
play_genre_artist - Play Roon Library Artist in Genre

# SYNOPSIS
**play_genre_artist** [ GENRE ] [ ARTIST ]

# DESCRIPTION
Plays Roon Library genre's artist matching the specified artist name or substring. This command is invoked by "roon -g genre [-a artist]".

# COMMAND LINE OPTIONS
**GENRE**
: Provide a genre name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library genre names matching the provided genre name or containing the substring will be searched for artists

**ARTIST**
: Provide an artist name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library artist names matching the provided artist name or containing the substring will be returned and the first one returned will be played.

# EXAMPLES
**play_genre_artist Prog Yes**
: Will play the first artist returned in a list of all Roon library artist names with names containing the string "Yes" by the genres whose name contains "Prog"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_GENRE_ARTIST is distributed under an Open Source license.
See the file LICENSE in the PLAY_GENRE_ARTIST source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_GENRE_ARTIST and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

