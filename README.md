Scripts/Roon
============

Scripts to access the Roon API providing command line support for playing specified artists, tracks, radio, or other Roon audio

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

    $ git clone ssh://gitlab.com/doctorfree/Scripts.git
    $ cd Scripts/Roon
    $ ./install.sh
    # copy the "roon" script to all systems you wish to act as Roon command line

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

    Usage: roon -r -u -a artist -g genre -l [artists|playlists|zones] -s search -p playlist -t tag -z zone -c [play|pause|stop|next|previous|shuffle|unshuffle|repeat|unrepeat|mute|unmute]

	Where:
		-a artist selects an artist to play
		-g genre selects a genre to play
		-p playlist selects a playlist to play
		-l [artists|playlists|zones] indicates list artists, playlists, or Roon zones
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


Contents
--------

[**roon**](Roon/roon) - Shell script frontend to run on systems that can SSH in to the Roon API server. This script can be used to issue Roon commands via the command line and SSH.

[**clone_pyroon**](Roon/clone_pyroon) - Shell script to retrieve the pyroon project source code from Github and apply my patches

[**play_artist**](Roon/play_artist) - Shell script frontend for playing a specified artist in my Roon library

[**play_genre**](Roon/play_genre) - Shell script frontend to play a specified genre

[**play_playlist**](Roon/play_playlist) - Shell script frontend to play a specified playlist

[**play_rp**](Roon/play_rp) - Shell script frontend for playing Radio Paradise Main Channel in a Roon zone

[**play_tag**](Roon/play_tag) - Shell script frontend to play a specified tag (not yet working)

[**list_artists**](Roon/list_artists) - Search and list the available Artists in your Roon Library

[**list_playlists**](Roon/list_playlists) - Search and list the available Roon Playlists

[**list_zones**](Roon/list_zones) - List the available Roon Zones

[**set_zone**](Roon/set_zone) - Set the Roon Zone in which subsequent commands will run

[**zone_command**](Roon/zone_command) - Shell script frontend for commands to be issued in the selected Roon Zone (e.g. play, pause, mute, unmute, next track, previous track)

[**INSTALL**](Roon/INSTALL) - Describes the installation process

[**install.sh**](Roon/install.sh) - Convenience script to copy scripts into place

[**usage.txt**](Roon/usage.txt) - Frontend "roon" script usage documentation

[**api**](Roon/api/README.md) - Python scripts to call the Roon API with appropriate arguments

[**patches**](Roon/patches/README.md) - Patches to the Python Roon API to extend its capabilities
