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

There are three components to install. First, install the Python Roon API
on a system which is on the same local network as your Roon Core.

Note, verify you have Python 3 and pip already installed. For example,
on an Ubuntu 20.04 system I have installed, it was necessary to first configure
Python 3 as the default Python executable, install pip3, and then
configure pip3 as the default pip:

    $ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10
	$ sudo apt install python3-pip
    $ sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

Once you have verified Python 3 and pip are installed appropriately, install
the Python Roon API:

    $ pip install roonapi

The second component is the Python Roon API frontend shell scripts
and the Python Roon API backend Python scripts. These both get installed on
the system on which the Python Roon API is installed. Copy this entire repository
to the target system. Change directory into the Roon subdirectory and execute
the "install.sh" script. This will copy the frontend shell scripts into
$HOME/bin and the backend Python scripts into $HOME/RoonCommandLine.

For example, on the system where the Python Roon API is installed:

	$ mkdir -p $HOME/src
	$ cd $HOME/src
    $ git clone git@gitlab.com:doctorfree/RoonCommandLine.git

	# Alternatively, download the latest release:
	# https://gitlab.com/doctorfree/RoonCommandLine/-/releases

    $ cd RoonCommandLine
    $ ./install.sh

	# Edit the Python Roon API command line configuration file.
	# Several default settings are provided. You may wish to modify these.
	$ vi $HOME/RoonCommandLine/roon_api.ini

	# The RoonCoreIP setting shuuld have been configured during install.
	# Verify the RoonCoreIP setting is correct.
	# If you do not know your Roon Core IP, run the discovery script
	$ $HOME/bin/get_core_ip
	# Authorize the extension when prompted
	# In a Roon Remote client window click "Settings" -> "Extensions" -> "Enable"

The third component is the "roon" shell script. This should be copied to
a location in your shell execution PATH on all of the systems from which
you wish to issue command line Roon controls.

	# The username and ip address of the Python Roon API server were
	# configured during installation. Verify these settings in the
	# roon script are correct.
	#
    # Copy the "roon" script to all systems on which you wish to use
	# the Python Roon API command line tools, every system you want to
	# enable as a command line Roon remote. Each system must be able to
	# access the Python Roon API installed system via SSH

Finally, note that the roon shell script is not passing credentials in the
SSH invocations. SSH authentication via public key needs to be enabled and
appropriate keys generated and propogated. This topic is addressed in various
guides on setting up SSH.

Manual Patch Application
------------------------

Some of the commands require a patch to the Python Roon API to be applied.
This patch enables searching and retrieving lists of various objects in a
Roon library. If the Python Roon API module and patch could be found during
the execution of the install.sh script then this patch was automatically
applited and you need do nothing. However, if the patch did not apply or
failed to apply properly and you wish to enable the "list" feature of
these scripts then apply the Python Roon API patch manually. Performing
this step should not be necessary but instructions are provided should
you at any point need to re-apply the patch manually. To apply the patch,
after performing the steps above, execute the following:

    $ cd $HOME/src
	$ $HOME/bin/clone_pyroon

	# Alternatively, download the latest pyroon release and apply the patch by hand
	# https://github.com/pavoni/pyroon/releases
	# patch -b -p0 < $HOME/src/RoonCommandLine/patches/pyroon-listmedia.patch

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
	$ patch -b -p0 < $HOME/src/RoonCommandLine/patches/roonapi-listmedia.patch

Removal
-------

The Roon Command Line scripts, patches, and configuration can be removed by
executing the "uninstall.sh" script in the RoonCommandLine source directory.

    $ cd $HOME/src/RoonCommandLine
	$ ./uninstall.sh

Troubleshooting
---------------

The most common difficulty encountered during initial setup of the Roon Command
Line package is the configuration of public key authentication in SSH. This allows
the "roon" command on your systems to execute Roon Command Line commands remotely
without the need to enter credentials. There are many guides available on the
Internet that provide instructions on configuring public key SSH authentication.
For instance, see

    https://www.ssh.com/academy/ssh/command#configuring-public-key-authentication

or

    https://serverpilot.io/docs/how-to-use-ssh-public-key-authentication/

Also, make sure the SSH service is running on the Python Roon API system.

In some cases the initial installation may fail to configure the system properly.
The Roon Command Line install creates two configuration files:

    $HOME/.pyroonconf

and

    $HOME/RoonCommandLine/roon_api.ini
	
These two configuration files are the first place to look when you encounter an issue.
The $HOME/.pyroonconf file contains 3 settings:

    - The path to the Python User Base folder where the Python Roon API site-packages
	  directory is located
	- A variable used to determine if the Python Roon API patch has been applied
	- The currently active Roon Zone name used by the Roon Commmand Line

The $HOME/RoonCommandLine/roon_api.ini file contains default values for album name,
artist, genre, playlist, tag, and zone as well as the name of a file that contains
a token used to authenticate with the Roon Core and the Roon Core IP address.
Verify the settings in roon_api.ini are valid and correct. The most common issue
will be an incorrect Roon Core IP address setting. You can verify this address is
correct by comparing it to the value displayed in your Roon Remote window at

    Settings -> General

under "ROON CORE".

Much of the Roon Command Line setup is automatically configured during the execution
of the ./install.sh script. If you have some expertise in Bash scripting you can
examine this script to see what commands were issued.

Another area that may be causing problems is the installation of the Python Roon API
package and its ability to communicate with your Roon Core. To debug problems I have
found it useful to SSH in to the system running the Python Roon API package and run
commands by hand there. For example, rather than running "roon -l zones" command
which remotely runs the list_zones command, SSH in as the configured user, cd to the
appropriate directory, and run

    $ python list_zones.py -z all

This eliminates SSH and remote execution as well as the intermediate shell script
used to execute the python script. Similar python commands can be issued directly
on the Python Roon API system in the $HOME/RoonCommandLine directory.

The initial installation and configuration also includes a patch to the Python
Roon API site packages module installed prior to the Roon Command Line installation
with "pip install roonapi". This patch may fail to apply correctly. The application
of the patch requires that the patch command is installed on your system as well as
common commands like awk and sed. Check that these commands are properly installed
and, if not, install them.

The install.sh script uses the command:

    $ python -m site --user-site

to retrieve the location of the User site packages directory from Python.
It then parses that with awk. If that doesn’t find it then it uses the command:

    $ python -c ‘import site; print(site.getsitepackages())’ | tr -d ‘[],’)

to retrieve a list of folders Python uses for site packages. If either of these
commands is failing to retrieve the Python site package folder that contains the
Python Roon API module, or if your Linux subsystem does not have the necessary
commands then the patch will fail. The patch is applied in the discovered folder,
for example $HOME/.local/lib/python3.8/site-packages/roonapi/ and creates files
with a .orig suffix as backups.

Verify that the "roon" frontend command shell script has been configured properly.
Open the roon shell script in an editor and find the two lines near the top of the
file that set the "server" and "user" shell variables. Verify that the "server"
variable is set to the correct IP address of the Python Roon API server and that
the "user" variable is set to the username used in the SSH commands to execute
the Python commands on the Python Roon API server. These should have been set for
you automatically during the installation process but may have been misconfigured.

Usage
-----

The "roon" shell script is installed on any system that you want to utilize
for command line control of Roon. It must be on a system that is able to SSH
to the system on which the Python Roon API scripts are installed.

Note, the first time you execute the roon shell script you may have to enable
the Python Roon API extension by clicking "Settings" -> "Extensions" -> "Enable"
in a Roon Remote client window.

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
			roon -l playlists -s Best
		NOTE: Use quotes to specify media names which contain spaces.
		For example, to play the album 'Love Bomb':
			roon -A "Love Bomb"

When playing media from the command line it is possible to specify a substring
with which a partial match can be made. In order to play media, either the full
name of the desired media or enough of a substring to uniquely match must be
supplied. This applies to playing an album, artist, genre, playlist, or tag.
For example, the command "roon -a Tull" would play media by artist "Jethro Tull"
unless there were multiple artist name matches to the substring "Tull".

Contents
--------

[**roon**](RoonCommandLine/roon) - Shell script frontend to run on systems that can SSH in to the Roon API server. This script can be used to issue Roon commands via the command line and SSH.

[**clone_pyroon**](RoonCommandLine/clone_pyroon) - Shell script to retrieve the pyroon project source code from Github and apply my patches

[**get_core_ip**](RoonCommandLine/get_core_ip) - Shell script to retrieve the Roon Core IP address

[**get_zones**](RoonCommandLine/get_zones) - Shell script to retrieve the Roon output Zone names

[**play_album**](RoonCommandLine/play_album) - Shell script frontend for playing a specified album in my Roon library

[**play_artist**](RoonCommandLine/play_artist) - Shell script frontend for playing a specified artist in my Roon library

[**play_genre**](RoonCommandLine/play_genre) - Shell script frontend to play a specified genre

[**play_playlist**](RoonCommandLine/play_playlist) - Shell script frontend to play a specified playlist

[**play_rp**](RoonCommandLine/play_rp) - Shell script frontend for playing Radio Paradise Main Channel in a Roon zone

[**play_tag**](RoonCommandLine/play_tag) - Shell script frontend to play a specified tag (not yet working)

[**list_albums**](RoonCommandLine/list_albums) - Search and list the available Albums in your Roon Library

[**list_artists**](RoonCommandLine/list_artists) - Search and list the available Artists in your Roon Library

[**list_genres**](RoonCommandLine/list_genres) - Search and list the available Genres in your Roon Library

[**list_playlists**](RoonCommandLine/list_playlists) - Search and list the available Roon Playlists

[**list_tags**](RoonCommandLine/list_tags) - Search and list the available Roon Library tags

[**list_zones**](RoonCommandLine/list_zones) - List the available Roon Zones

[**set_zone**](RoonCommandLine/set_zone) - Set the Roon Zone in which subsequent commands will run

[**zone_command**](RoonCommandLine/zone_command) - Shell script frontend for commands to be issued in the selected Roon Zone (e.g. play, pause, mute, unmute, next track, previous track)

[**INSTALL**](RoonCommandLine/INSTALL) - Describes the installation process

[**LICENSE**](RoonCommandLine/LICENSE) - Apache License version 2.0

[**NOTICE**](RoonCommandLine/NOTICE) - Copyright notice

[**install.sh**](RoonCommandLine/install.sh) - Convenience script to copy scripts into place

[**usage.txt**](RoonCommandLine/usage.txt) - Frontend "roon" script usage documentation

[**api/**](RoonCommandLine/api/README.md) - Python scripts to call the Roon API with appropriate arguments

[**patches/**](RoonCommandLine/patches/README.md) - Patches to the Python Roon API to extend its capabilities
