---
title: PLAY_ALBUM
section: 1
header: User Manual
footer: play_album 2.0.1
date: December 05, 2021
---
# NAME
play_album - Play Roon Library Album

# SYNOPSIS
**play_album** [ ALBUM ]

# DESCRIPTION
Plays the Roon Library album named *ALBUM*. If no library album name matches *ALBUM* exactly, search for Roon Library albums whose name contains the case-sensitive string *ALBUM*. If there is a unique match on the search substring then *play_album* will play that album. If more than one Roon Library album name matches the search substring then *play_album* will return a list of matching album names. To play an album using the substring search facility, enough of a substring must be supplied to uniquely match a Roon Library album name.

# COMMAND LINE OPTIONS
**ALBUM**
:  Provide an album name, in quotes if it contains spaces, or a case-sensitive substring. A Roon library album name matching the provided album name or containing the substring will be played if a unique match is found.

# EXAMPLES
**play_album Moon**
: Will play Roon library album name "Moon" if it exists. If not then it will play the Roon library album whose name contains the string "Moon" if only one match is found.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_ALBUM is distributed under an Open Source license.
See the file LICENSE in the PLAY_ALBUM source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_ALBUM and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

