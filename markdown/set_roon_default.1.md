---
title: SET_ROON_DEFAULT
section: 1
header: User Manual
footer: set_roon_default 2.0.1
date: August 17, 2024
---
# NAME
set_roon_default - Set RoonCommandLine defaults

# SYNOPSIS
**set_roon_default** [-A album] [-a artist] [-c composer] [-g genre] [-p playlist] [-r radio] [-t tag] [-z zone] [-u]

# DESCRIPTION
The *set_roon_default* command can be used to set RoonCommandLine defaults for album, artist, composer, genre, playlist, radio, tag, and playback zone.

# COMMAND LINE OPTIONS
**-A 'album'**
: specifies the album title to set as the default album

**-a 'artist'**
: specifies the artist name to set as the default artist

**-c 'composer'**
: specifies the composer name to set as the default composer

**-g 'genre'**
: specifies the genre name to set as the default genre

**-p 'playlist'**
: specifies the playlist name to set as the default playlist

**-r 'radio'**
: specifies the radio name to set as the default radio

**-t 'tag'**
: specifies the tag name to set as the default tag

**-z 'zone'**
: specifies the zone name to set as the default zone

**-u**
: displays this usage message and exits

# EXAMPLES
**set_roon_default -z HomePod**
: Will set the default Roon zone to "HomePod" if a zone by that name exists. If no zone named "HomePod" exists then Roon zones are searched for a zone name containing the string "HomePod" and the first matching Roon zone name is set as the default Roon zone.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
SET_ROON_DEFAULT is distributed under an Open Source license.
See the file LICENSE in the SET_ROON_DEFAULT source distribution
for information on terms &amp; conditions for accessing and
otherwise using SET_ROON_DEFAULT and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

