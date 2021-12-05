---
title: PLAY_GENRE
section: 1
header: User Manual
footer: play_genre 2.0.1
date: December 05, 2021
---
# NAME
play_genre - Play Roon Library Genre

# SYNOPSIS
**play_genre** [*GENRE*]

# DESCRIPTION
**play_genre** Plays the Roon Library genre named *GENRE*. If no library genre name matches *GENRE* exactly, search for Roon Library genre whose name contains the case-sensitive string *GENRE*. If there is a unique match on the search substring then it will play that genre. If more than one Roon Library genre name matches the search substring then it will return a list of matching genre names. To play an genre using the substring search facility, enough of a substring must be supplied to uniquely match a Roon Library genre name.

# COMMAND LINE OPTIONS
**GENRE**
:  Provide an genre name, in quotes if it contains spaces, or a case-sensitive substring. A Roon library genre name matching the provided genre name or containing the substring will be played if a unique match is found.

# EXAMPLES
**play_genre Rock**
: Will play Roon library genre name "Rock" if it exists. If not then it will play the Roon library genre whose name contains the string "Rock" if only one match is found.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
Play_genre is distributed under an Open Source license.
See the file LICENSE in the Play_genre source distribution
for information on terms &amp; conditions for accessing and
otherwise using Play_genre and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

