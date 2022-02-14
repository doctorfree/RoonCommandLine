---
title: LIST_GENRE_ARTISTS
section: 1
header: User Manual
footer: list_genre_artists 2.0.1
date: February 13, 2022
---
# NAME
list_genre_artists - List Roon Library Artists in Genre

# SYNOPSIS
**list_genre_artists** [ GENRE ] [ ARTIST ]

# DESCRIPTION
Lists Roon Library artists in the given genre matching the specified artist name or substring. The special string "__all__" can be used to retrieve all artists by the specified genre. This command is invoked by "roon -l genartists -g genre [-a artist]".

# COMMAND LINE OPTIONS
**GENRE**
: Provide a genre name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library genre names matching the provided genre name or containing the substring will be searched for artists

**ARTIST**
: Provide an artist name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library artist names matching the provided artist name or containing the substring will be returned

# EXAMPLES
**list_genre_artists Classical __all__**
: Will return a list of all Roon library artist names in the Classical genre

**list_genre_artists Rock Deep**
: Will return a list of Roon library artist names in genres whose name contains "Rock", one per line, displaying only those artists that contain the string "Deep"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_GENRE_ARTISTS is distributed under an Open Source license.
See the file LICENSE in the LIST_GENRE_ARTISTS source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_GENRE_ARTISTS and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

