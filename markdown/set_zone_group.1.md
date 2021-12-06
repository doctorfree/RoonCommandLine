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
Set_zone_group is distributed under an Open Source license.
See the file LICENSE in the Set_zone_group source distribution
for information on terms &amp; conditions for accessing and
otherwise using Set_zone_group and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

