---
title: LIST_ZONES
section: 1
header: User Manual
footer: list_zones 2.0.1
date: December 05, 2021
---
# NAME
list_zones - List Roon Zones

# SYNOPSIS
**list_zones** [ ZONE ]

# DESCRIPTION
Lists all Roon zones, zone groupings, and configured zone grouping presets. If a zone is specified on the command line then only that zone and its groupings will be retrieved. A case-sensitive substring can be used as the ZONE argument in which case all zones that contain that substring along with their groupings will be returned.

# COMMAND LINE OPTIONS
**ZONE**
: The zone name or case-sensitive substring to match

# EXAMPLES
**list_zones HomePod**
: Will return a list of zones and zone groupings for all zone names containing the string "HomePod"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
List_zones is distributed under an Open Source license.
See the file LICENSE in the List_zones source distribution
for information on terms &amp; conditions for accessing and
otherwise using List_zones and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

