---
title: PLAY_ARTIST_ALBUM
section: 1
header: User Manual
footer: play_artist_album 2.0.1
date: February 13, 2022
---
# NAME
play_artist_album - Play Roon Library Album by Artist

# SYNOPSIS
**play_artist_album** [ -z ZONE ] [ ARTIST ] [ ALBUM ] [ EXARTIST ] [ EXALBUM ]

# DESCRIPTION
Plays Roon Library artist's album matching the specified album name or substring. This command is invoked by "roon -a artist [-A album] [-x exartist] [-X exalbum]".

# COMMAND LINE OPTIONS
**-z ZONE**
: Specify the Roon Zone in which to play. If no zone is specified the default zone will be used.

**ARTIST**
: Provide an artist name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library artist names matching the provided artist name or containing the substring will be searched for albums

**ALBUM**
: Provide an album name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library album names matching the provided album name or containing the substring will be returned and the first one returned will be played.

**EXARTIST**
: Provide an artist exclusion string, in quotes if it contains spaces. No Roon library artist names including the provided artist exclusion string will be searched

**EXALBUM**
: Provide an album exclusion string, in quotes if it contains spaces. No Roon library album names including the provided album exclusion string will be played

# EXAMPLES
**play_artist_album Beatles Lonely**
: Will play the first album returned in a list of all Roon library album names with titles containing the string "Lonely" by the artists whose name contains "Beatles"

**play_artist_album Jackson Late Joe**
: Will play the first album returned in a list of all Roon library album names with titles containing the string "Late" by the artists whose name contains "Jackson" but not "Joe"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_ARTIST_ALBUM is distributed under an Open Source license.
See the file LICENSE in the PLAY_ARTIST_ALBUM source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_ARTIST_ALBUM and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/play_artist_album.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/play_artist_album.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: play_artist_album.py [-h] [-A ALBUM] [-a ARTIST] [-X EXALBUM]
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
