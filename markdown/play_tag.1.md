---
title: PLAY_TAG
section: 1
header: User Manual
footer: play_tag 2.0.1
date: December 05, 2021
---
# NAME
play_tag - Play Roon Library Tag

# SYNOPSIS
**play_tag** [*TAG*]

# DESCRIPTION
**play_tag** Plays the Roon Library tag named *TAG*. If no library tag name matches *TAG* exactly, search for Roon Library tag whose name contains the case-sensitive string *TAG*. If there is a unique match on the search substring then it will play that tag. If more than one Roon Library tag name matches the search substring then it will return a list of matching tag names. To play an tag using the substring search facility, enough of a substring must be supplied to uniquely match a Roon Library tag name.

# COMMAND LINE OPTIONS
**TAG**
:    Provide an tag name, in quotes if it contains spaces, or a case-sensitive substring. A Roon library tag name matching the provided tag name or containing the substring will be played if a unique match is found.

# EXAMPLES
**play_tag Moon**
:    Will play Roon library tag name "Moon" if it exists. If not then it will play the Roon library tag whose name contains the string "Moon" if only one match is found.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
Play_tag is distributed under an Open Source license.
See the file LICENSE in the Play_tag source distribution
for information on terms &amp; conditions for accessing and
otherwise using Play_tag and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

