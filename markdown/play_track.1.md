---
title: PLAY_TRACK
section: 1
header: User Manual
footer: play_track 2.0.1
date: May 22, 2024
---
# NAME
play_track - Play specified Roon Library track

# SYNOPSIS
**play_track** [ -z ZONE ] [ TRACK ]

# DESCRIPTION
Plays Roon Library track matching the specified track name or substring. This command is invoked by "roon [-T track]".

# COMMAND LINE OPTIONS
**-z ZONE**
: Specify the Roon Zone in which to play. If no zone is specified the default zone will be used.

**TRACK**
: Provide a track name, in quotes if it contains spaces, or a case-sensitive substring. All Roon library track names matching the provided track name or containing the substring will be returned and the first one returned will be played.

# EXAMPLES
**play_track Yesterday**
: Will play the first track returned in a list of all Roon library track names with titles containing the string "Yesterday"

**play_track "Love Me Do"**
: Will play the first track returned in a list of all Roon library track names with titles containing the string "Love Me Do"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_TRACK is distributed under an Open Source license.
See the file LICENSE in the PLAY_TRACK source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_TRACK and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/play_track.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/play_track.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: play_track.py [-h] [-t TRACK] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -t TRACK, --track TRACK
                        track search term
  -z ZONE, --zone ZONE  zone selection
~~~~