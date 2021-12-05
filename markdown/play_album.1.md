---
title: PLAY_ALBUM
section: 1
header: User Manual
footer: play_album 2.0.1
date: December 05, 2021
---
# NAME
play_album - Play Roon Library Album

# SYNOPSIS
**play_album** [*ALBUM*]

# DESCRIPTION
**play_album** Plays the Roon Library album named *ALBUM*. If no library album name matches *ALBUM* exactly, search for Roon Library albums whose name contains the case-sensitive string *ALBUM*. If there is a unique match on the search substring then it will play that album. If more than one Roon Library album name matches the search substring then it will return a list of matching album names. To play an album using the substring search facility, enough of a substring must be supplied to uniquely match a Roon Library album name.

# COMMAND LINE OPTIONS
**ALBUM**
:  Provide an album name, in quotes if it contains spaces, or a case-sensitive substring. A Roon library album name matching the provided album name or containing the substring will be played if a unique match is found.

# EXAMPLES
**play_album Moon**
: Will play Roon library album name "Moon" if it exists. If not then it will play the Roon library album whose name contains the string "Moon" if only one match is found.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
Play_album is distributed under an Open Source license.
See the file LICENSE in the Play_album source distribution
for information on terms &amp; conditions for accessing and
otherwise using Play_album and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

