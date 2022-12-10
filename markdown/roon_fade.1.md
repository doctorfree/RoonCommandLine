---
title: ROON_FADE
section: 1
header: User Manual
footer: roon_fade 2.0.1
date: December 05, 2022
---
# NAME
roon_fade - Enable/Disable volume fading in a Roon zone

# SYNOPSIS
**roon_fade** [ **-i|-I** ] [ **-l** ] [ **-t** seconds ] [ **-uh** ] [ **-z** zone ] **on|off**

An argument of *on* enables fading, *off* disables fading. Without arguments or with *-u* or *-h*, a usage message with current status is displayed

# DESCRIPTION
Enables or disables volume fading on specified zone or default zone if no zone is specified. If the `-l` flag is provided then logging is enabled. Without arguments **roon_fade** reports whether fading is enabled or disabled. When the **on** argument is provided **roon_fade** launches the **roon_faded** daemon to monitor playback and perform fading.

The *-t seconds* argument can be used to set the fade delay in seconds. An argument of *-t default* restores the default fade delay. Default is 30 seconds.

The default fading behavior is to fade out at the end of tracks and fade back in at the beginning of the next track. To restore volume levels immediately after fading out use the *-I* command line switch `roon_fade -I ...`. To restore the default fade back in behavior use the *-i* command line switch `roon_fade -i ...`.

# COMMAND LINE OPTIONS
**-u|-h**
: Display a usage message with current status and exit

**-i**
: enables fade in next track after fading out (default)

**-I**
: disables fade in, immediately restore volume after fading

**-l**
: Enable logging

**-t seconds**
: Specifies the number of seconds the fade should run (default: 30) 

**-z ZONE**
: If a *ZONE* is specified then perform fading for that zone. If no *ZONE* is provided on the command line then perform fading on the default zone.

**on|off**
: An argument of *on* indicates enable fading, *off* disables fading.

# EXAMPLES
**roon_fade**
: Displays status of fading in specified or default zone

**roon_fade -l on**
: Enables fading in the default zone, enables logging

**roon_fade off**
: Disables fading in the default zone

**roon_fade -z Kitchen on**
: Enables fading in the Roon zone named *Kitchen*

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
ROON_FADE is distributed under an Open Source license.
See the file LICENSE in the ROON_FADE source distribution
for information on terms &amp; conditions for accessing and
otherwise using ROON_FADE and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**roon_faded**(5), **clone_pyroon**(1), **get_core_ip**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **now_playing**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

