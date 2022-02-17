---
title: LIST_GENRE_ALBUMS
section: 1
header: User Manual
footer: list_genre_albums 2.0.1
date: February 13, 2022
---
# NAME
list_genre_albums - List Roon Library Albums in Genre

# SYNOPSIS
**list_genre_albums** [ GENRE ] [ ALBUM ] [ EXGENRE ] [ EXALBUM ]

# DESCRIPTION
Lists Roon Library albums in the given genre matching the specified album name or substring. The special string "__all__" can be used to retrieve all albums by the specified genre. This command is invoked by "roon -l genalbums -g genre [-A album] [-x exgenre] [-X exalbum]".

# COMMAND LINE OPTIONS
**GENRE**
: Provide a genre name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library genre names matching the provided genre name or containing the substring will be searched for albums

**ALBUM**
: Provide an album name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library album names matching the provided album name or containing the substring will be returned

**EXGENRE**
: Provide a genre exclusion string, in quotes if it contains spaces. No Roon library genre names including the provided genre exclusion string will be searched

**EXALBUM**
: Provide an album exclusion string, in quotes if it contains spaces. No Roon library album names including the provided album exclusion string will be listed

# EXAMPLES
**list_genre_albums Classical __all__**
: Will return a list of all Roon library album names in the Classical genre

**list_genre_albums Rock Moon**
: Will return a list of Roon library album names in genres whose name contains "Rock", one per line, displaying only those albums that contain the string "Moon"

**list_genre_albums Classical "Peer Gynt" Art**
: Will return a list of Roon library album names in genres whose name contains "Classical" but not "Art", one per line, displaying only those albums that contain the string "Peer Gynt"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_GENRE_ALBUMS is distributed under an Open Source license.
See the file LICENSE in the LIST_GENRE_ALBUMS source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_GENRE_ALBUMS and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/list_genre_albums.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/list_genre_albums.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: list_genre_albums.py [-h] [-a ALBUM] [-g GENRE] [-X EXALBUM]
                            [-x EXGENRE] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -a ALBUM, --album ALBUM
                        album search term
  -g GENRE, --genre GENRE
                        genre search term
  -X EXALBUM, --exalbum EXALBUM
                        album exclude search term
  -x EXGENRE, --exgenre EXGENRE
                        genre exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
