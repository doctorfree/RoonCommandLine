---
title: LIST_COMPOSER_ALBUMS
section: 1
header: User Manual
footer: list_composer_albums 2.0.1
date: February 13, 2022
---
# NAME
list_composer_albums - List Roon Library Composer's Albums

# SYNOPSIS
**list_composer_albums** [ COMPOSER ] [ ALBUM ]

# DESCRIPTION
Lists Roon Library composer's albums matching the specified album name or substring. The special string "__all__" can be used to retrieve all albums by the specified composer. This command is invoked by "roon -l comalbums -C composer [-A album]".

# COMMAND LINE OPTIONS
**COMPOSER**
: Provide an composer name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library composer names matching the provided composer name or containing the substring will be searched for albums

**ALBUM**
: Provide an album name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library album names matching the provided album name or containing the substring will be returned

# EXAMPLES
**list_composer_albums Mozart __all__**
: Will return a list of all Roon library album names by the composers whose name contains "Mozart"

**list_composer_albums Bach Brandenburg**
: Will return a list of Roon library album names by composers whose name contains "Bach", one per line, displaying only those albums that contain the string "Brandenburg"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_COMPOSER_ALBUMS is distributed under an Open Source license.
See the file LICENSE in the LIST_COMPOSER_ALBUMS source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_COMPOSER_ALBUMS and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_composer_albums**(1), **list_composers**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_composers**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_composer**(1), **play_composer_album**(1), **play_composer_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_composer**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)


Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

