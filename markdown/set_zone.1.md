---
title: SET_ZONE
section: 1
header: User Manual
footer: set_zone 2.0.1
date: December 05, 2021
---
# NAME
set_zone - Set the default Roon playback Zone

# SYNOPSIS
**set_zone** [*ZONE*]

# DESCRIPTION
**set_zone** Sets the default Roon playback zone. Current playback, if active, is unaffected. Subsequent Roon commands, if no zone is specified on the command line, will take effect in the specified default Roon zone. If the Roon zone specified on the command line does not match a configured Roon zone exactly then the first Roon zone name containing the *ZONE* substring will be set as the default Roon zone.

# COMMAND LINE OPTIONS
**ZONE**
: Set the default Roon playback zone to *ZONE*

# EXAMPLES
**set_zone HomePod**
: Will set the default Roon zone to "HomePod" if a zone by that name exists. If no zone named "HomePod" exists then Roon zones are searched for a zone name containing the string "HomePod" and the first matching Roon zone name is set as the default Roon zone.

# AUTHORS
Written by Ronald Record &lt;github@ronrecord.com&gt;

# LICENSING
Set_zone is distributed under an Open Source license.
See the file LICENSE in the Set_zone source distribution
for information on terms &amp; conditions for accessing and
otherwise using Set_zone and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: &lt;https://gitlab.com/doctorfree/RoonCommandLine/issues&gt;

# SEE ALSO
Full documentation and sources at: &lt;https://gitlab.com/doctorfree/RoonCommandLine&gt;
