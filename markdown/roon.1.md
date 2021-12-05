---
title: ROON
section: 1
header: User Manual
footer: roon 2.0.1
date: December 04, 2021
---
# NAME
roon - Command line control of the Roon audio system over a local network

# SYNOPSIS
**roon** **-A** album **-a** artist **-g** genre **-G** zone\_group
    **-l** [albums|artists|genres|playlists|tags|zones]
    **-s** search **-p** playlist **-t** tag **-z** zone
	**-c** [group|ungroup|play|pause|stop|next|previous|shuffle|unshuffle|repeat|unrepeat|mute|unmute]
	**-L** **-S** **-r** radio **-u**

# DESCRIPTION
Command line Roon control provides support for:

- Play album by album name
- Play artist name
- Play genre
- Play playlist by playlist name
- Play tag
- Play Roon Radio
- Issue one of the following commands in the specified zone
  - group
  - ungroup
  - play
  - pause
  - playpause
  - stop
  - next
  - previous
  - shuffle
  - unshuffle
  - repeat
  - unrepeat
  - mute
  - unmute
- List albums, artists, genres, playlists, tags, or Roon zones
- Set the default Roon output zone
- Select Roon audio zone or zone grouping

<!-- end of list -->

In addition, search capabilities have been added to the scripts
with partial matching facilities. Thus a substring can be supplied to use as a
search term with partial matching returning albums, artists, playlists, genres,
or tags which contain the specified substring (case sensitive). The special search
term "all" indicates match all albums, artists, playlists, genres, or tags.

All commands and playback can target a specified Roon output zone.

**Note:** No modifications are made to the Roon Core. The RoonCommandLine
package resides entirely on other systems within your local area network.

Additional detail and info can be found in the
[RoonCommandLine Wiki](https://gitlab.com/doctorfree/RoonCommandLine/-/wikis/home).

# COMMAND LINE OPTIONS

**-u**
: Display usage message

**-A** album
: Selects an album to play

**-a** artist
: Selects an artist to play

**-g** genre
: Selects a genre to play

**-p** playlist
: Selects a playlist to play

**-G** zone\_group
: Specifies a zone grouping specified in roon\_api.ini

**-L**
: Setup roon to execute local commands rather than remote via SSH

**-S**
: Set Roon defaults in roon\_api.ini

**-l** [albums|artists|genres|playlists|tags|zones]
: Indicates list albums, artists, genres, playlists, tags, or Roon zones

**-r** radio
: Selects a live radio stream to play

**-s** search
: Specifies a term to search for in the lists retrieved with -l

**-t** tag
: Selects an tag to play (not yet working)

**-z** zone
: Selects the Roon Zone in which to play

**-c** [group|ungroup|play|pause|playpause|stop|next|previous|shuffle|unshuffle|repeat|unrepeat|mute|unmute]
: Issues the command in the selected zone

Special search term **\_\_all\_\_** matches all entries
Special name **default** plays the default setting in roon\_api.ini

# CONFIGURATION
Roon utilizes two configuration files, **/usr/local/Roon/etc/pyroonconf**
and **/usr/local/Roon/etc/roon_api.ini**

Default settings are applied during the RoonCommandLine installation process.
The primary area of post-installation configuration is setting the ZONEGROUPS
and DEFAULT values in the file **/usr/local/Roon/etc/roon_api.ini**.
The RoonCommandLine installation attempts to automate this configuration and
should have provided a good starting point with default settings in **roon_api.ini**
but you may wish to adjust these.

In Roon, you can view your existing zones by visiting **Settings->Audio**. The names
of the enabled audio devices are your zones. You can change the name of a zone by
clicking the "pencil" icon next to the name in the Roon audio settings screen.

Modify **roon_api.ini** with your desired zone groupings and default values.
In particular, set the **DefaultZone** value in the DEFAULT section to a zone
that will be available, enabled, and one you wish to use as your primary
default fallback zone. The installation picked a DefaultZone for you and
you may be satisfied with that automatic setting.

Note, the DefaultZone setting is used when no zone is specified,
RoonCommandLine commands all accept a **-z zone** argument that can be
used to specify the zone to be used as well as a **-G <group>** that can
be used to specify the zone grouping to use.

Note also that should you change the name of a Roon audio device in the future
then that name change will also need to be reflected in the **roon_api.ini** groupings.

If you wish to enable remote exection of the RoonCommandLine tools then
it is necessary to setup SSH public key authentication. The RoonCommandLine
utilities can be executed locally on the same system they are installed on by
enabling local access with the **roon -L** command. This avoids the need to enable
SSH public key authentication but restricts your use of the RoonCommandLine
tools to the system on which they are installed.

# EXAMPLES
**roon -a "Deep Purple"**
: Play artist

**roon -a "Jethro Tull" -z "Mac Pro DAC"**
: Play artist in specified zone

**roon -g Classical**
: Play genre

**roon -r default**
: Play default live radio

**roon -p "Bowie Favs"**
: Play playlist

**roon -c next**
: Play next track

**roon -c stop -z Kitchen**
: Stop play in specified zone

**roon -c mute -z "Mac Pro DAC"**
: Mute a specified zone

**roon -l playlists -s Best**
: List all playlists containing the string 'Best'

**roon -G foobar -c group**
: Group the zones listed in roon\_api.ini Group\_foobar

**NOTE:** Use quotes to specify media names which contain spaces.
For example, to play the album 'Love Bomb':
**roon -A "Love Bomb"**

# AUTHORS
Written by Ron Record &lt;gitlab@ronrecord.com&gt;

# LICENSING
RoonCommandLine is distributed under an Open Source license.
See the file LICENSE in the RoonCommandLine source distribution
for information on terms &amp; conditions for accessing and
otherwise using RoonCommandLine.

# BUGS
Submit bug reports online at: &lt;https://gitlab.com/doctorfree/RoonCommandLine/issues&gt;

# SEE ALSO
Full documentation, installation packages, and sources at: &lt;https://gitlab.com/doctorfree/RoonCommandLine&gt;

Information on the Roon Core System can be found at https://roonlabs.com/

The Roon Command Line utilities utilize the [Python Roon API](https://github.com/pavoni/pyroon) to communicate with the Roon Core System.
