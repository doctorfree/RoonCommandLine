---
title: PLAY_PLAYLIST
section: 1
header: User Manual
footer: play_playlist 2.0.1
date: December 05, 2021
---
# NAME
play_playlist - Play Roon Library Playlist

# SYNOPSIS
**play_playlist** [*PLAYLIST*]

# DESCRIPTION
**play_playlist** Plays the Roon Library playlist named *PLAYLIST*. If no library playlist name matches *PLAYLIST* exactly, search for Roon Library playlist whose name contains the case-sensitive string *PLAYLIST*. If there is a unique match on the search substring then it will play that playlist. If more than one Roon Library playlist name matches the search substring then it will return a list of matching playlist names. To play an playlist using the substring search facility, enough of a substring must be supplied to uniquely match a Roon Library playlist name.

# COMMAND LINE OPTIONS
**PLAYLIST**
:  Provide an playlist name, in quotes if it contains spaces, or a case-sensitive substring. A Roon library playlist name matching the provided playlist name or containing the substring will be played if a unique match is found.

# EXAMPLES
**play_playlist Mood**
: Will play Roon library playlist name "Mood" if it exists. If not then it will play the Roon library playlist whose name contains the string "Mood" if only one match is found.

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
Play_playlist is distributed under an Open Source license.
See the file LICENSE in the Play_playlist source distribution
for information on terms &amp; conditions for accessing and
otherwise using Play_playlist and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://gitlab.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
Full documentation and sources at: https://gitlab.com/doctorfree/RoonCommandLine

