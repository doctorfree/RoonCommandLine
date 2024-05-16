---
title: PLAY_TAG
section: 1
header: User Manual
footer: play_tag 2.0.1
date: December 05, 2021
---
# NAME
play_tag - Play Roon Library Tag

# SYNOPSIS
**play_tag** [ -z ZONE ] [ TAG ]

# DESCRIPTION
Plays the Roon Library tag named *TAG*. If no library tag name matches *TAG* exactly, search for Roon Library tag whose name contains the case-sensitive string *TAG*. If there is a unique match on the search substring then *play_tag* will play that tag. If more than one Roon Library tag name matches the search substring then *play_tag* will return a list of matching tag names. To play an tag using the substring search facility, enough of a substring must be supplied to uniquely match a Roon Library tag name.

# COMMAND LINE OPTIONS
**-z ZONE**
: Specify the Roon Zone in which to play. If no zone is specified the default zone will be used.

**TAG**
:    Provide an tag name, in quotes if it contains spaces, or a case-sensitive substring. A Roon library tag name matching the provided tag name or containing the substring will be played if a unique match is found.

# EXAMPLES
**play_tag Moon**
:    Will play Roon library tag name "Moon" if it exists. If not then it will play the Roon library tag whose name contains the string "Moon" if only one match is found.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_TAG is distributed under an Open Source license.
See the file LICENSE in the PLAY_TAG source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_TAG and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/play_tag.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/play_tag.py [ options]**

Where [ options ] are described in the following usage message:

~~~~
usage: play_tag.py [-h] [-t TAG] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -t TAG, --tag TAG     tag selection
  -z ZONE, --zone ZONE  zone selection
~~~~
