---
title: PLAY_GENRE_ALBUM
section: 1
header: User Manual
footer: play_genre_album 2.0.1
date: February 13, 2022
---
# NAME
play_genre_album - Play Roon Library Album in Genre

# SYNOPSIS
**play_genre_album** [ GENRE ] [ ALBUM ] [ EXGENRE ] [ EXALBUM ]

# DESCRIPTION
Plays Roon Library genre's album matching the specified album name or substring. This command is invoked by "roon -g genre [-A album] [-x exgenre] [-X exalbum]".

# COMMAND LINE OPTIONS
**GENRE**
: Provide a genre name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library genre names matching the provided genre name or containing the substring will be searched for albums

**ALBUM**
: Provide an album name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library album names matching the provided album name or containing the substring will be returned and the first one returned will be played.

**EXGENRE**
: Provide a genre exclusion string, in quotes if it contains spaces. No Roon library genre names including the provided genre exclusion string will be searched

**EXALBUM**
: Provide an album exclusion string, in quotes if it contains spaces. No Roon library album names including the provided album exclusion string will be played

# EXAMPLES
**play_genre_album Prog Edge**
: Will play the first album returned in a list of all Roon library album names with titles containing the string "Edge" by the genres whose name contains "Prog"

**play_genre_album Rock Close Surf Closer**
: Will play the first album returned in a list of all Roon library album names with titles containing the string "Close" but not "Closer" by the genres whose name contains "Rock" but not "Surf"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_GENRE_ALBUM is distributed under an Open Source license.
See the file LICENSE in the PLAY_GENRE_ALBUM source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_GENRE_ALBUM and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/play_genre_album.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/play_genre_album.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: play_genre_album.py [-h] [-a ALBUM] [-g GENRE] [-X EXALBUM]
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
