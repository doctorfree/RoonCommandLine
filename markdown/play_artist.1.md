---
title: PLAY_ARTIST
section: 1
header: User Manual
footer: play_artist 2.0.1
date: December 05, 2021
---
# NAME
play_artist - Play Roon Library Artist

# SYNOPSIS
**play_artist** [ ARTIST ]

# DESCRIPTION
Plays the Roon Library artist named *ARTIST*. If no library artist name matches *ARTIST* exactly, search for Roon Library artist whose name contains the case-sensitive string *ARTIST*. If there is a unique match on the search substring then *play_artist* will play that artist. If more than one Roon Library artist name matches the search substring then *play_artist* will return a list of matching artist names. To play an artist using the substring search facility, enough of a substring must be supplied to uniquely match a Roon Library artist name.

# COMMAND LINE OPTIONS
**ARTIST**
:  Provide an artist name, in quotes if it contains spaces, or a case-sensitive substring. A Roon library artist name matching the provided artist name or containing the substring will be played if a unique match is found.

# EXAMPLES
**play_artist Young**
: Will play Roon library artist name "Young" if it exists. If not then it will play the Roon library artist whose name contains the string "Young" if only one match is found.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
PLAY_ARTIST is distributed under an Open Source license.
See the file LICENSE in the PLAY_ARTIST source distribution
for information on terms &amp; conditions for accessing and
otherwise using PLAY_ARTIST and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

