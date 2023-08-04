---
title: LIST_ARTIST_ALBUMS
section: 1
header: User Manual
footer: list_artist_albums 2.0.1
date: February 13, 2022
---
# NAME
list_artist_albums - List Roon Library Artist's Albums

# SYNOPSIS
**list_artist_albums** [ ARTIST ] [ ALBUM ] [ EXARTIST ] [ EXALBUM ]

# DESCRIPTION
Lists Roon Library artist's albums matching the specified album name or substring. The special string "__all__" can be used to retrieve all albums by the specified artist. This command is invoked by "roon -l artalbums -a artist [-A album] [-x exartist] [-X exalbum]".

# COMMAND LINE OPTIONS
**ARTIST**
: Provide an artist name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library artist names matching the provided artist name or containing the substring will be searched for albums

**ALBUM**
: Provide an album name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library album names matching the provided album name or containing the substring will be returned

**EXARTIST**
: Provide an artist exclusion string, in quotes if it contains spaces. No Roon library artist names including the provided artist exclusion string will be searched

**EXALBUM**
: Provide an album exclusion string, in quotes if it contains spaces. No Roon library album names including the provided album exclusion string will be listed

# EXAMPLES
**list_artist_albums Beatles __all__**
: Will return a list of all Roon library album names by the artists whose name contains "Beatles"

**list_artist_albums Rocky Moon**
: Will return a list of Roon library album names by artists whose name contains "Rocky", one per line, displaying only those albums that contain the string "Moon"

**list_artist_albums Rocky Moon Squirrel Light**
: Will return a list of Roon library album names by artists whose name contains "Rocky" but do not contain the string "Squirrel", one per line, displaying only those albums that contain the string "Moon" but do not contain the string "Light"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
LIST_ARTIST_ALBUMS is distributed under an Open Source license.
See the file LICENSE in the LIST_ARTIST_ALBUMS source distribution
for information on terms &amp; conditions for accessing and
otherwise using LIST_ARTIST_ALBUMS and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)


Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/list_artist_albums.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/list_artist_albums.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: list_artist_albums.py [-h] [-A ALBUM] [-a ARTIST] [-X EXALBUM]
                             [-x EXARTIST] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -A ALBUM, --album ALBUM
                        album search term
  -a ARTIST, --artist ARTIST
                        artist search term
  -X EXALBUM, --exalbum EXALBUM
                        album exclude search term
  -x EXARTIST, --exartist EXARTIST
                        artist exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
