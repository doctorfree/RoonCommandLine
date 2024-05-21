---
title: PLAY_COMPOSER_ALBUM
section: 1
header: User Manual
footer: play_composer_album 2.0.1
date: February 13, 2022
---
# NAME
play_composer_album - Play Roon Library Album by Composer

# SYNOPSIS
**play_composer_album** [ -z ZONE ] [ COMPOSER ] [ ALBUM ] [ EXCOMPOSER ] [ EXALBUM ]

# DESCRIPTION
Plays Roon Library composer's album matching the specified album name or substring. This command is invoked by "roon -C composer [-A album] [-x excomposer] [-X exalbum]".

# COMMAND LINE OPTIONS
**-z ZONE**
: Specify the Roon Zone in which to play. If no zone is specified the default zone will be used.

**COMPOSER**
: Provide an composer name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library composer names matching the provided composer name or containing the substring will be searched for albums

**ALBUM**
: Provide an album name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library album names matching the provided album name or containing the substring will be returned and the first one returned will be played.

**EXCOMPOSER**
: Provide a composer exclusion string, in quotes if it contains spaces. No Roon library composer names including the provided composer exclusion string will be searched

**EXALBUM**
: Provide an album exclusion string, in quotes if it contains spaces. No Roon library album names including the provided album exclusion string will be played

# EXAMPLES
**play_composer_album Mozart Concerto**
: Will play the first album returned in a list of all Roon library album names with titles containing the string "Concerto" by the composers whose name contains "Mozart"

**play_composer_album Bach Love Sebastian Lovers**
: Will play the first album returned in a list of all Roon library album names with titles containing the string "Love" but not "Lovers" by the composers whose name contains "Bach" but not "Sebastian"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_COMPOSER_ALBUM is distributed under an Open Source license.
See the file LICENSE in the PLAY_COMPOSER_ALBUM source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_COMPOSER_ALBUM and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_composer_albums**(1), **list_composers**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_composers**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_composer**(1), **play_composer_album**(1), **play_composer_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_composer**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/play_composer_album.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/play_composer_album.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: play_composer_album.py [-h] [-a ALBUM] [-c COMPOSER] [-X EXALBUM]
                              [-x EXCOMPOSER] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -a ALBUM, --album ALBUM
                        album search term
  -c COMPOSER, --composer COMPOSER
                        composer search term
  -X EXALBUM, --exalbum EXALBUM
                        album exclude search term
  -x EXCOMPOSER, --excomposer EXCOMPOSER
                        composer exclude search term
  -z ZONE, --zone ZONE  zone selection
~~~~
