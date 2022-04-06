---
title: ROON
section: 1
header: User Manual
footer: roon 2.0.1
date: December 04, 2021
---
# NAME
roon - Command line control of the Roon Audio System

# SYNOPSIS

**roon** [ **-EuU** ] [ **-L** ] [ **-S** ] [ **-l** albums | artists | artalbums | composers | genres | genalbums | genartists | playlists | tags | zones ] [ **-A** album ] [ **-a** artist ] [ **-C** composer ] [ **-g** genre ] [ **-p** playlist ] [ **-r** radio ] [ **-t** tag ] [ **-s** search ] [-v volume] [ **-z** zone ] [ **-G** zone\_group ] [ **-c** group | ungroup | play | pause | stop | next | previous | shuffle | unshuffle | repeat | unrepeat | mute | unmute ] [ **-T** track ]

# DESCRIPTION
The *roon* command acts as a front-end for executing the RoonCommandLine
project commands to provide Command Line control of the Roon Audio System
over a local area network. Roon Command Line commands utilize the
Python Roon API to communicate with the Roon Core.

Command line Roon control provides support for:

- Play album by album name
- Play artist name
- Play album by artist
- Play tracck by artist
- Play genre
- Play album in genre
- Play artist in genre
- Play playlist by playlist name
- Play tag
- Play Roon Live Radio
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
- List albums, artists, albums by artist, albums by genre, artists by genre, genres, composers, playlists, tags, or Roon zones
- Set the default Roon output zone
- Set the volume level of a specified Roon zone or zone grouping
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
: Display full usage message with examples

**-E**
: Display examples

**-U**
: Display usage message with no examples

**-A** album
: Selects an album to play

**-a** artist
: Selects an artist to play

**-C** composer
: Selects a composer to play

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

**-l** **[**albums | artists | artalbums | composers | genres | genalbums | genartists | playlists | tags | zones**]**
: Indicates list albums, artists, albums by artist, composers, genres, albums in genre, artists in genre, playlists, tags, or Roon zones

**-r** radio
: Selects a live radio stream to play

**-s** search
: Specifies a term to search for in the lists retrieved with -l

**-T** track
: Selects an track to play

**-t** tag
: Selects an tag to play

**-v** volume
: Sets the volume level of a Roon zone or zone grouping

The `volume` argument has the format `[g:][r:][s:]num` where:

'g' indicates set volume for all zones in the zone grouping

'r' specifies use relative method volume setting

's' specifies use relative_step method volume setting

'num' can be absolute, a percentage, and negative or positive

**-z** zone
: Selects the Roon Zone in which to play

**-c** **[**group | ungroup | play | pause | playpause | stop | next | previous | shuffle | unshuffle | repeat | unrepeat | mute | unmute**]**
: Issues the command in the selected zone

Combine '-a artist' and '-A album' to play an album by a specified artist
Combine '-a artist' and '-T track' to play a track by a specified artist
Combine '-a artist' or '-A album' with '-g genre' to play an artist or album in a specified genre

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
Written by Ron Record gitlab@ronrecord.com

# LICENSING
RoonCommandLine is distributed under an Open Source license.
See the file LICENSE in the RoonCommandLine source distribution
for information on terms &amp; conditions for accessing and
otherwise using RoonCommandLine.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_volume**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation, installation packages, and sources at: https://gitlab.com/doctorfree/RoonCommandLine

Information on the Roon Core System can be found at https://roonlabs.com/

The Roon Command Line utilities utilize the [Python Roon API](https://github.com/pavoni/pyroon) to communicate with the Roon Core System.
