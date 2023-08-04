---
title: SET_VOLUME
section: 1
header: User Manual
footer: set_volume 2.0.4
date: April 06, 2022
---
# NAME
set_volume - Set the volume level in a specified Roon Zone

# SYNOPSIS
**set_volume** [-g] [-p PERCENT] [-r] [-s] [-v VOLUME] [-z ZONE]

# DESCRIPTION
Set the specified volume level in the selected Roon zone. Volume control methods can be specified as `relative` (`-r` option), `relative_step` (`-s` option), or `absolute` (default method). All zones in a grouped zone will be effected if the `-g` option is provided. If no zone is specified, the default RoonCommandLine zone will be used. Volume level for the `relative_step` method is a percentage. Volume level values can be negative or positive indicating decrease or increase the volume level. Outputs are queried to determine if their volume levels should be specified in decibels or 0-100 and the provided volume level is converted to decibels if necessary.

Desired volume level can be provided either as a volume value (`-v volume`) or as a percentage (`-p percent`). When specified as a percent with `-p` the volume adjustment is either set to the specified percentage of the volume range or, if combined with the `-r` relative flag, adjusted by the given percentage relative to the current volume.

# COMMAND LINE OPTIONS
**-g**
  : apply volume level to all zones in a group

**-p PERCENT**
  : specifies desired volume level as a percentage

**-r**
  : use relative volume level method

**-s**
  : use relative step volume level method

**-v VOLUME**
  : specifies desired volume level

**-z ZONE**
  : specifies desired zone selection

# EXAMPLES
**set_volume -v 70 -z HomePod**
: Set the volume level to 70 in the Roon Zone named "HomePod"

**set_volume -p 70 -z Kitchen**
: Set the volume to 70% in the Roon Zone named "Kitchen"

**set_volume -r -v -10 -z HomePod**
: Decrease the volume by 10 in the Roon Zone named "HomePod"

**set_volume -r -p -10 -z Kitchen**
: Decrease the volume by 10 percent in the Roon Zone named "Kitchen"

**set_volume -s -v 10 -z HomePod**
: Step the volume up 10% in the Roon Zone named "HomePod"

**set_volume -g -p 75 -z Kitchen**
: Set the volume to 75% in all Roon Zones in the zone grouping containing the "Kitchen" zone

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
SET_VOLUME is distributed under an Open Source license.
See the file LICENSE in the SET_VOLUME source distribution
for information on terms &amp; conditions for accessing and
otherwise using SET_VOLUME and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

The corresponding Python script, */usr/local/Roon/api/set_volume.py*,
can be invoked directly as:

**python3 /usr/local/Roon/api/set_volume.py [ options]**

Where [ options ] are described in the following usage message:

```
usage: set_volume.py [-h] [-g] [-r] [-s] [-v VOLUME] [-z ZONE]

optional arguments:
  -h, --help            show this help message and exit
  -g, --grouped         apply volume level to all zones in a group
  -r, --relative        relative volume level
  -s, --step            relative step volume level
  -v VOLUME, --volume VOLUME
                        desired volume level
  -z ZONE, --zone ZONE  zone selection
```
