---
title: TRANSFER_ZONE
section: 1
header: User Manual
footer: transfer_zone 2.0.1
date: February 20, 2024
---
# NAME
transfer_zone - Transfer the current queue from one zone to another

            from_zone_or_output_id - The source zone or output
            to_zone_or_output_id - The destination zone or output
        """
        data = {
            "from_zone_or_output_id": from_zone_or_output_id,
            "to_zone_or_output_id": to_zone_or_output_id,
        }
        return self._request(SERVICE_TRANSPORT + "/transfer_zone", data)


# SYNOPSIS
**transfer_zone** [ FROM_ZONE ] TO_ZONE

# DESCRIPTION
Transfers the current queue from one Roon zone to another. The first argument specifies the source zone and the second argument specifies the destination zone. If no source zone is specified then the source zone is set to the last played zone and the destination zone is set to the first argument.

# COMMAND LINE OPTIONS
**FROM_ZONE**
: The source Roon zone can be specified on the command line as the first argument. If no second argument is provided then the source zone is the last played zone.

**TO_ZONE**
: The destination Roon zone can be specified on the command line as the second argument or, if no source zone is provided as the first argument then the first argument is taken to be the destination zone.

# EXAMPLES
**transfer_zone HomePod "WiiM Pro"**
: Transfers the current queue from the Roon zone "HomePod" to the Roon zone "WiiM Pro"

# AUTHORS
Written by Ronald Record github@ronrecord.com

# LICENSING
TRANSFER_ZONE is distributed under an Open Source license.
See the file LICENSE in the TRANSFER_ZONE source distribution
for information on terms &amp; conditions for accessing and
otherwise using TRANSFER_ZONE and for a DISCLAIMER OF ALL WARRANTIES.

# BUGS
Submit bug reports online at: https://github.com/doctorfree/RoonCommandLine/issues

# SEE ALSO
**get_core_ip**(1), **get_zone_info**(1), **now_playing**(1), **list_albums**(1), **list_artist_albums**(1), **list_artists**(1), **list_composers**(1), **list_genre_albums**(1), **list_genre_artists**(1), **list_genres**(1), **list_playlists**(1), **list_radio**(1), **list_tags**(1), **list_zones**(1), **play_album**(1), **play_artist**(1), **play_artist_album**(1), **play_artist_track**(1), **play_composer**(1), **play_genre**(1), **play_genre_album**(1), **play_genre_artist**(1), **play_playlist**(1), **play_radio**(1), **play_tag**(1), **roon**(1), **set_zone**(1), **set_zone_group**(1), **zone_command**(1)

Full documentation and sources at: https://github.com/doctorfree/RoonCommandLine

