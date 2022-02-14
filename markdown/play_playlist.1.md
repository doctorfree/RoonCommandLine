---
title: PLAY_PLAYLIST
section: 1
header: User Manual
footer: play_playlist 2.0.1
date: December 05, 2021
---
# NAME
play_playlist - Play Roon Library Playlist

# SYNOPSIS
**play_playlist** [ PLAYLIST ]

# DESCRIPTION
Plays the Roon Library playlist named *PLAYLIST*. If no library playlist name matches *PLAYLIST* exactly, search for Roon Library playlist whose name contains the case-sensitive string *PLAYLIST*. If there is a unique match on the search substring then *play_playlist* will play that playlist. If more than one Roon Library playlist name matches the search substring then *play_playlist* will return a list of matching playlist names. To play an playlist using the substring search facility, enough of a substring must be supplied to uniquely match a Roon Library playlist name.

# COMMAND LINE OPTIONS
**PLAYLIST**
:  Provide an playlist name, in quotes if it contains spaces, or a case-sensitive substring. A Roon library playlist name matching the provided playlist name or containing the substring will be played if a unique match is found.

# EXAMPLES
**play_playlist Mood**
: Will play Roon library playlist name "Mood" if it exists. If not then it will play the Roon library playlist whose name contains the string "Mood" if only one match is found.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_PLAYLIST is distributed under an Open Source license.
See the file LICENSE in the PLAY_PLAYLIST source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_PLAYLIST and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

