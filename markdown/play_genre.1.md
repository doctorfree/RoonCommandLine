---
title: PLAY_GENRE
section: 1
header: User Manual
footer: play_genre 2.0.1
date: December 05, 2021
---
# NAME
play_genre - Play Roon Library Genre

# SYNOPSIS
**play_genre** [ GENRE ]

# DESCRIPTION
Plays the Roon Library genre named *GENRE*. If no library genre name matches *GENRE* exactly, search for Roon Library genre whose name contains the case-sensitive string *GENRE*. If there is a unique match on the search substring then *play_genre* will play that genre. If more than one Roon Library genre name matches the search substring then *play_genre* will return a list of matching genre names. To play an genre using the substring search facility, enough of a substring must be supplied to uniquely match a Roon Library genre name.

# COMMAND LINE OPTIONS
**GENRE**
:  Provide an genre name, in quotes if it contains spaces, or a case-sensitive substring. A Roon library genre name matching the provided genre name or containing the substring will be played if a unique match is found.

# EXAMPLES
**play_genre Rock**
: Will play Roon library genre name "Rock" if it exists. If not then it will play the Roon library genre whose name contains the string "Rock" if only one match is found.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_GENRE is distributed under an Open Source license.
See the file LICENSE in the PLAY_GENRE source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_GENRE and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

