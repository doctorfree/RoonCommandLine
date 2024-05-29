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
**play_genre_artist** [ -z ZONE ] [ GENRE ] [ ARTIST ] [ EXGENRE ] [ EXARTIST ]

# DESCRIPTION
Plays Roon Library genre's artist matching the specified artist name or substring. This command is invoked by "roon -g genre [-a artist] [-x exgenre] [-X exartist]".

# COMMAND LINE OPTIONS
**-z ZONE**
: Specify the Roon Zone in which to play. If no zone is specified the default zone will be used.  '-z default' indicates the default zone, '-z last' the last zone used

**GENRE**
: Provide a genre name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library genre names matching the provided genre name or containing the substring will be searched for artists

**ARTIST**
: Provide an artist name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library artist names matching the provided artist name or containing the substring will be returned and the first one returned will be played.

**EXGENRE**
: Provide a genre exclusion string, in quotes if it contains spaces. No Roon library genre names including the provided genre exclusion string will be searched

**EXARTIST**
: Provide an artist exclusion string, in quotes if it contains spaces. No Roon library artist names including the provided artist exclusion string will be played

# EXAMPLES
**play_genre_artist Prog Yes**
: Will play the first artist returned in a list of all Roon library artist names with names containing the string "Yes" by the genres whose name contains "Prog"

**play_genre_artist Rock Johnny foo Cash**
: Will play the first artist returned in a list of all Roon library artist names with names containing the string "Johnny" but not "Cash" by the genres whose name contains "Rock" but not "foo"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_GENRE_ARTIST is distributed under an Open Source license.
See the file LICENSE in the PLAY_GENRE_ARTIST source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_GENRE_ARTIST and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/play_genre_artist.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/play_genre_artist.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: play_genre_artist.py [-h] [-a ARTIST] [-g GENRE] [-X EXARTIST]
                            [-x EXGENRE] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -a ARTIST, --artist ARTIST
                        artist search term
  -g GENRE, --genre GENRE
                        genre search term
  -X EXARTIST, --exartist EXARTIST
                        artist exclude search term
  -x EXGENRE, --exgenre EXGENRE
                        genre exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
