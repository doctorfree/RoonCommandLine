---
title: GET_ZONES
section: 1
header: User Manual
footer: get_zones 2.0.1
date: December 05, 2021
---
# NAME
get_zones - Get the Roon Zones

# SYNOPSIS
**get_zones** [*ZONE*]...

# DESCRIPTION
**get_zones** Retrieves a comma separated list of Roon zones. If no zone is specified, it returns a comma separated list of all zones.

# COMMAND LINE OPTIONS
**ZONE**
: If a zone is specified on the command line then only that zone is returned. A case-sensitive substring can be used to retrieve all zone names that contain that string.

# EXAMPLES
**get_zones HomePod**
: Retrieves a comma separated list of all Roon zone names containing the string "HomePod"

# AUTHORS
Written by Ronald Record &lt;github@ronrecord.com&gt;

# LICENSING
Get_zones is distributed under an Open Source license.
See the file LICENSE in the Get_zones source distribution
for information on terms &amp; conditions for accessing and
otherwise using Get_zones and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: &lt;https://gitlab.com/doctorfree/RoonCommandLine/issues&gt;

# SEE ALSO
Full documentation and sources at: &lt;https://gitlab.com/doctorfree/RoonCommandLine&gt;

