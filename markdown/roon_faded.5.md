---
title: ROON_FADED
section: 5
header: User Manual
footer: roon_faded 2.0.1
date: December 05, 2022
---
# NAME
roon_faded - Roon zone volume fading daemon

# SYNOPSIS
**roon_faded** [ **-l** ] [ **-z** ZONE ]

# DESCRIPTION
Monitors zone playing state and time remaining for each track played in order to perform volume fading on specified zone or default zone if no zone is specified. If the `-l` flag is provided then logging is enabled. Launched by **roon_fade on**, exits with **roon_fade off**.

# COMMAND LINE OPTIONS
**-l**
: Enable logging

**-z ZONE**
: If a *ZONE* is specified then perform fading for that zone. If no *ZONE* is provided on the command line then perform fading on the default zone.

# EXAMPLES
**roon_faded** is controlled by **roon_fade** and is not intended to be launched directly.

**roon_fade -l on**
: Enables fading in the default zone, enables logging, launches **roon_faded**

**roon_fade off**
: Disables fading in the default zone, causes **roon_faded** to exit

**roon_fade -z Kitchen on**
: Enables fading in the Roon zone named *Kitchen*, launches **roon_faded**

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
ROON_FADED is distributed under an Open Source license.
See the file LICENSE in the ROON_FADED source distribution
for information on terms &amp; conditions for accessing and
otherwise using ROON_FADED and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**roon_fade**(1), **clone_pyroon**(1), **get_core_ip**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **now_playing**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

