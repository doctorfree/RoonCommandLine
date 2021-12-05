---
title: ZONE_COMMAND
section: 1
header: User Manual
footer: zone_command 2.0.1
date: December 05, 2021
---
# NAME
zone_command - Execute a Roon command in a specified Roon Zone

# SYNOPSIS
**zone_command** [*-c COMMAND*] [*-z ZONE*]

# DESCRIPTION
**zone_command** Executes the specified Roon command in the given Roon zone. If no *-c COMMAND* is provided then the "**play**" command is used. If no *ZONE* is provided then the configured default Roon zone is used. **COMMAND** can be one of "*play*", "*pause*", "*next*", "*previous*", "*mute*", "*unmute*", "*repeat*", "*unrepeat*", "*shuffle*", or "*unshuffle*". The *ZONE* name provided on the command line must match exactly the configured Roon Zone name in which to execute the Roon command. Partial matching is not yet implemented.

# COMMAND LINE OPTIONS
**-c COMMAND**
: Execute Roon command *COMMAND* in the specified zone

**-z zone**
: Execute specified Roon command in Roon zone *zone*

# EXAMPLES
**zone_command -c pause -z HomePod**
: Pause playback in the Roon Zone named "HomePod"

# AUTHORS
Written by Ronald Record &lt;github@ronrecord.com&gt;

# LICENSING
Zone_command is distributed under an Open Source license.
See the file LICENSE in the Zone_command source distribution
for information on terms &amp; conditions for accessing and
otherwise using Zone_command and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: &lt;https://gitlab.com/doctorfree/RoonCommandLine/issues&gt;

# SEE ALSO
Full documentation and sources at: &lt;https://gitlab.com/doctorfree/RoonCommandLine&gt;

