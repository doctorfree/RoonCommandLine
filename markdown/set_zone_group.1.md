---
title: SET_ZONE_GROUP
section: 1
header: User Manual
footer: set_zone_group 2.0.1
date: December 05, 2021
---
# NAME
set_zone_group - Set one of the Roon Zone groupings specified in **roon_api.ini**

# SYNOPSIS
**set_zone_group** [ group|ungroup ] [ ZONEGROUP ]

# DESCRIPTION
Groups or Ungroups the specified Roon Zone Grouping using one of the Zone Grouping presets in **/usr/local/Roon/etc/roon_api.ini**

# COMMAND LINE OPTIONS
**group|ungroup**
: The first argument to *set_zone_group* must be either "group" or "ungroup", indicating whether to group or ungroup the specified *ZONEGROUP* preset

**ZONEGROUP**
: The second argument to *set_zone_group* specifies the Zone Grouping preset to use. These are configured in the file **/usr/local/Roon/etc/roon_api.ini**. By default these Zone Grouping presets are named *Group_1*, *Group_2*, etc but can be any name of the form "Group_&lt;string&gt;". The *ZONEGROUP* argument should match one of the &lt;string&gt; Zone Grouping preset names. For example, to address Zone Grouping preset *Group_3*, specify *ZONEGROUP* as "3".

# EXAMPLES
**set_zone_group group 4**
: Group Roon Zones according to the Zone Grouping preset named *Group_4* in **roon_api.ini**

**set_zone_group ungroup 2**
: Ungroup Roon Zones according to the Zone Grouping preset named *Group_2* in **roon_api.ini**

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
SET_ZONE_GROUP is distributed under an Open Source license.
See the file LICENSE in the SET_ZONE_GROUP source distribution
for information on terms &amp; conditions for accessing and
otherwise using SET_ZONE_GROUP and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**clone_pyroon**(1), **get_core_ip**(1), **get_zone_info**(1), **get_zones**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

