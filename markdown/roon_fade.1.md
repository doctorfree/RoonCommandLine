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
**roon_fade** [ **-i|-I** ] [ **-l** ] [ **-R** ] [ **-V** ] [ **-t** seconds ] [ **-uh** ] [ **-y** ] [ **-z** zone ] **on|off|now**

An argument of *on* enables fading, *off* disables fading. An argument of *now* fades volume immediately followed by a prompt to restore volume levels. Without arguments or with *-u* or *-h*, a usage message with current status is displayed

# DESCRIPTION
The `roon_fade` command can be used to enable or disable volume fading on a specified zone or default zone if no zone is specified. All zones in a grouped zone are effected.

Volume level fading can be initiated in two ways with `roon_fade`. If enabled with the `roon_fade on` then volume fading will occur automatically at the end of every track. In this mode volume levels are restored automatically at the beginning of next track play. To disable automatic volume fading, run `roon_fade off`.

The second mode, immediate fading, can be triggered with the `roon_fade now` command. In immediate mode volume levels are faded immediately followed by a prompt to restore volume levels.

Currently only one Roon zone or zone grouping can be addressed by `roon_fade`. It is possible to enable fading in one zone or grouped zone while not fading in others but it is not possible to enable fading in multiple zones unless they are grouped.

When the **on** argument is provided **roon_fade** launches the **roon_faded** daemon to monitor playback and perform fading. The **off** argument disables fading and causes the fade daemon to exit. An argument of *now* fades volume immediately followed by a prompt to restore volume levels and temporarily disables the fade daemon if running.

Without arguments **roon_fade** reports whether fading is enabled or disabled.

If the `-l` flag is provided then logging is enabled in log file `/usr/local/Roon/etc/faded_log.txt`.

The *-R* option can be used to restore faded or modified volume to original levels.

The *-V* option can be used to update fading restore volume to current volume levels. This can be useful after manually adjusting volume levels.

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

**-R**
: Restores faded or modified volume to original levels

**-V**
: Updates fading restore volume to current volume levels (use 'roon_fade -V' after manually adjusting volume)

**-t seconds**
: Specifies the number of seconds the fade should run (default: 30) 

**-y**
: Indicates do not prompt, assume a 'yes' answer to any prompt

**-z ZONE**
: If a *ZONE* is specified then perform fading for that zone. If no *ZONE* is provided on the command line then perform fading on the default zone.

**on|off|now**
: An argument of *on* indicates enable fading, *off* disables fading, *now* fades volume immediately

# EXAMPLES
**roon_fade**
: Displays status of fading in specified or default zone

**roon_fade -l on**
: Enables fading in the default zone, enables logging

**roon_fade off**
: Disables fading in the default zone

**roon_fade -z Kitchen on**
: Enables fading in the Roon zone named *Kitchen*

**roon_fade now**
: Immediately fades volume in the default Roon zone followed by a prompt to restore volume levels

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

