---
title: PLAY_RADIO
section: 1
header: User Manual
footer: play_radio 2.0.1
date: December 05, 2021
---
# NAME
play_radio - Play Roon Live Radio

# SYNOPSIS
**play_radio** [ -z ZONE ] [ RADIO ]

# DESCRIPTION
Plays the Roon Live Radio channel named *RADIO*. If no Live Radio channel name matches *RADIO* exactly, search for Roon Live Radio channels whose name contains the case-sensitive string *RADIO*. If there is a unique match on the search substring then *play_radio* will play that Live Radio channel. If more than one Roon Live Radio channel name matches the search substring then *play_radio* will return a list of matching Live Radio channel names. To play a Live Radio channel using the substring search facility, enough of a substring must be supplied to uniquely match a Roon Live Radio channel name.

# COMMAND LINE OPTIONS
**-z ZONE**
: Specify the Roon Zone in which to play. If no zone is specified the default zone will be used.

**RADIO**
:  Provide a Live Radio channel name, in quotes if it contains spaces, or a case-sensitive substring. A Roon Live Radio channel name matching the provided Live Radio channel name or containing the substring will be played if a unique match is found.

# EXAMPLES
**play_radio WKRP**
: Will play Roon Live Radio channel name "WKRP" if it exists. If not then it will play the Roon Live Radio channel whose name contains the string "WKRP" if only one match is found.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_RADIO is distributed under an Open Source license.
See the file LICENSE in the PLAY_RADIO source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_RADIO and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/play_radio.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/play_radio.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: play_radio.py [-h] [-r RADIO] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -r RADIO, --radio RADIO
                        radio selection
  -z ZONE, --zone ZONE  zone selection
~~~~
