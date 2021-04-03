RoonCommandLine
===============

The Roon Command Line project provides Bash and Python scripts to enable
command line control of the Roon audio system over a local network.

It requires a Roon Core system as well as the Python Roon API from
https://github.com/pavoni/pyroon

A frontend Bash script can be installed wherever you want to issue Roon
commands. Roon commands are issued via public key authenticated SSH commands
sent to a system with the Python Roon API installed. That system then parses
the commands and communicates with the Roon Core via the Roon API.

Currently the command line Roon control scripts provide support for playing
specified albums, artists, genres, playlists, tags, radio, or other Roon
library media. In addition, search capabilities have been added to the scripts
with partial matching facilities. Thus a substring can be supplied to use as a
search term with partial matching returning albums, artists, playlists, genres,
or tags which contain the specified substring.

In addition to media search and playback, the Python Roon API Command Line
supports Roon command control. Commands currently supported include:
    play, pause, playpause, stop, next, previous,
    shuffle, unshuffle, repeat, unrepeat, mute, unmute

All commands and playback can target a specified Roon output zone.

History
-------

This project began as an attempt to control Roon with Siri voice commands.
Several users had posted in the Roon forums various ways to use Siri to control Roon.
These usually took the form of a fake device in HomeBridge that then communicates with
HomeKit and Siri. This seemed cool but maybe overkill. I was able to get Siri voice
control of Roon working with simple SSH shortcuts that execute Python scripts which
utilize the Roon API to control Roon. People don’t seem to know about Apple’s SSH
shortcuts. They can be used to execute commands on systems that allow SSH access.
I used an Ubuntu 20.10 system recently installed to install the Python Roon API project
(pip install roonapi) and quickly cobbled together a Python script based on one of the
examples in that project. The Python script accepts an argument specifying an artist
name in my Roon library. It then uses the Roon API to play music from my library by
that artist in the specified zone.

On my iPhone I then created shortcuts which use the “Run script over SSH”
option for Apple Scripting shortcuts. The shortcuts execute a Bash command which is a
shell script that executes the Python script with appropriate arguments. It all seems
to work. I did run into a few gotchas. It seems with current Python/Pip installs you
need to specify an environment variable telling Python where the Pip modules are located.
So I needed a login shell to pick that up but I could not figure out how to tell the
Apple shortcut to give me an SSH login shell. The Python env variable is set in the
shell script the SSH session executes.

Currently this project has morphed primarily into a set of command line tools to control
various aspects of Roon remotely. There is still the capability to augment this command
line control with Siri voice commands that trigger an Apple Shortcut which executes a
command via SSH. But what we have here in the repository are the command line tools.

Installation
------------

There are four components to install. First, install the Python Roon API
on a system which is on the same local network as your Roon Core.

    $ pip install roonapi

The second component is the "roon" shell script. This should be copied to
a location in your shell execution PATH on all of the systems from which
you wish to issue command line Roon controls.

The third and fourth components are the Python Roon API frontend shell scripts
and the Python Roon API backend Python scripts. These both get installed on
the system on which the Python Roon API is installed. Copy this entire repository
to the target system. Change directory into the Roon subdirectory and execute
the "install.sh" script. This will copy the frontend shell scripts into
$HOME/bin and the backend Python scripts into $HOME/Roon.

For example, on the system where the Python Roon API is installed:

	$ mkdir -p $HOME/src
	$ cd $HOME/src
    $ git clone git@gitlab.com:doctorfree/RoonCommandLine.git

	# Alternatively, download the latest release:
	# https://gitlab.com/doctorfree/RoonCommandLine/-/releases

    $ cd RoonCommandLine
    $ ./install.sh

	# Edit the Python Roon API command line configuration file
	$ vi $HOME/Roon/roon_api.ini

	# At a minimum you will need to set RoonCoreIP to your Roon Core IP address
	# If you do not know your Roon Core IP, run the discovery script
	$ $HOME/bin/get_core_ip
	# Authorize the extension when prompted
	# In a Roon Remote client window click "Settings" -> "Extensions" -> "Enable"

    # Copy the "roon" script to all systems on which you wish to use
	# the Python Roon API command line tools, every system you want to
	# enable as a command line Roon remote. Each system must be able to
	# access the Python Roon API installed system via SSH

Some of the commands require a patch to the Python Roon API to be applied.
I wrote this patch to enable searching and retrieving lists of various
objects in my Roon library. If you wish to enable the "list" feature of
these scripts then apply the Python Roon API patch. Performing this step
is optional. Most commands will function properly without it. Only the
listing feature will not work. To apply the patch, after performing the
steps above, execute the following:

    $ cd $HOME/src
	$ $HOME/bin/clone_pyroon

	# Alternatively, download the latest pyroon release and apply the patch by hand
	# https://github.com/pavoni/pyroon/releases
	# patch -b -p0 < $HOME/src/RoonCommandLine/patches/pyroon-listplaylist.patch

	$ cd pyroon/roonapi
	$ cp *.py $HOME/Python3/lib/python3.8/site-packages/roonapi

Note this last command, copying the Python scripts to the site-packages/roonapi
directory, needs to provide the correct path to your installed Python
site-packages/roonapi directory. The command above is correct for my system
but your system may differ. Double check where this directory got created
by the "pip install roonapi" command.

Python has global and per-user site-packages directories. To find your Python
user site-packages directory, issue the command:

    $ python -m site --user-site

To find your Python global dist-packages directory, issue the command:

    $ python -c 'import site; print(site.getsitepackages())'

The roonapi module should be in your user site-packages directory.

Alternatively, you can patch the Python Roon API roonapi module directly rather
than patching the pyroon source code and copying it in. To perform this
direct patch, follow these steps:

    $ cd $HOME/Python3 # Or wherever your Pip roonapi module is installed
	$ patch -b -p0 < $HOME/src/RoonCommandLine/patches/roonapi-listplaylist.patch

Finally, note that the roon shell script is not passing credentials in the
SSH invocations. SSH authentication via public key needs to be enabled and
appropriate keys generated and propogated. This topic is addressed in various
guides on setting up SSH.

Usage
-----

The "roon" shell script is installed on any system that you want to utilize
for command line control of Roon. It must be on a system that is able to SSH
to the system on which the Python Roon API scripts are installed.

The Python Roon API scripts must be installed on a system that is on the same
local network as the Roon Core. The "roon" shell script is the primary user
interface. It accepts a wide variety of arguments and sends a command to the
Python Roon API system via SSH.

Here is the current output of "roon -u" which displays a usage message.

    Usage: roon -A album -a artist -g genre -l [albums|artists|genres|playlists|zones]
	    -r -u -s search -p playlist -t tag -z zone
	    -c [play|pause|stop|next|previous|shuffle|unshuffle|repeat|unrepeat|mute|unmute]

	Where:
		-A album selects an album to play
		-a artist selects an artist to play
		-g genre selects a genre to play
		-p playlist selects a playlist to play
		-l [albums|artists|genres|playlists|zones] indicates list albums, artists, genres, playlists, or Roon zones
		-s search specifies a term to search for in the lists retrieved with -l
		-r indicates play Radio Paradise
		-t tag selects an tag to play (not yet working)
		-z zone selects the Roon Zone in which to play
		-c [play|pause|playpause|stop|next|previous|shuffle|unshuffle|repeat|unrepeat|mute|unmute]
			issues the command in the selected zone

	Example invocations
		Play artist:
			roon -a "Deep Purple"
		Play artist in specified zone:
			roon -a "Jethro Tull" -z "Living Room"
		Play genre:
			roon -g Classical
		Play playlist:
			roon -p "Bowie Favs"
		Play next track:
			roon -c next
		Stop play in specified zone:
			roon -c stop -z Kitchen
		Mute a specified zone:
			roon -c mute -z "Living Room"
		List all playlists containing the string 'Best':
			roon -l playlists -s "Best"

When playing media from the command line it is possible to specify a substring
with which a partial match can be made. In order to play media, either the full
name of the desired media or enough of a substring to uniquely match must be
supplied. This applies to playing an album, artist, genre, playlist, or tag.
For example, the command "roon -a Tull" would play media by artist "Jethro Tull"
unless there were multiple artist name matches to the substring "Tull".

Contents
--------

[**roon**](Roon/roon) - Shell script frontend to run on systems that can SSH in to the Roon API server. This script can be used to issue Roon commands via the command line and SSH.

[**clone_pyroon**](Roon/clone_pyroon) - Shell script to retrieve the pyroon project source code from Github and apply my patches

[**get_core_ip**](Roon/get_core_ip) - Shell script to retrieve the Roon Core IP address

[**get_zones**](Roon/get_zones) - Shell script to retrieve the Roon output Zone names

[**play_album**](Roon/play_album) - Shell script frontend for playing a specified album in my Roon library

[**play_artist**](Roon/play_artist) - Shell script frontend for playing a specified artist in my Roon library

[**play_genre**](Roon/play_genre) - Shell script frontend to play a specified genre

[**play_playlist**](Roon/play_playlist) - Shell script frontend to play a specified playlist

[**play_rp**](Roon/play_rp) - Shell script frontend for playing Radio Paradise Main Channel in a Roon zone

[**play_tag**](Roon/play_tag) - Shell script frontend to play a specified tag (not yet working)

[**list_albums**](Roon/list_albums) - Search and list the available Albums in your Roon Library

[**list_artists**](Roon/list_artists) - Search and list the available Artists in your Roon Library

[**list_genres**](Roon/list_genres) - Search and list the available Genres in your Roon Library

[**list_playlists**](Roon/list_playlists) - Search and list the available Roon Playlists

[**list_zones**](Roon/list_zones) - List the available Roon Zones

[**set_zone**](Roon/set_zone) - Set the Roon Zone in which subsequent commands will run

[**zone_command**](Roon/zone_command) - Shell script frontend for commands to be issued in the selected Roon Zone (e.g. play, pause, mute, unmute, next track, previous track)

[**INSTALL**](Roon/INSTALL) - Describes the installation process

[**LICENSE**](Roon/LICENSE) - Apache License version 2.0

[**NOTICE**](Roon/NOTICE) - Copyright notice

[**install.sh**](Roon/install.sh) - Convenience script to copy scripts into place

[**usage.txt**](Roon/usage.txt) - Frontend "roon" script usage documentation

[**api/**](Roon/api/README.md) - Python scripts to call the Roon API with appropriate arguments

[**patches/**](Roon/patches/README.md) - Patches to the Python Roon API to extend its capabilities
