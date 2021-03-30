Scripts/Roon
============

Scripts to access the Roon API providing command line support for playing specified artists, tracks, radio, or other Roon audio

History
-------

Several users have posted in the Roon forums various ways to use Siri to control Roon.
These usually take the form of a fake device in HomeBridge that then communicates with
HomeKit and Siri. This seems cool but maybe overkill. I was able to get Siri voice
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

Contents
--------

[**roon**](Roon/roon) - Shell script frontend to run on systems that can SSH in to the Roon API server. This script can be used to issue Roon commands via the command line and SSH.

[**play_artist**](Roon/play_artist) - Shell script frontend for playing a specified artist in my Roon library

[**play_genre**](Roon/play_genre) - Shell script frontend to play a specified genre

[**play_rp**](Roon/play_rp) - Shell script frontend for playing Radio Paradise Main Channel in a Roon zone

[**play_tag**](Roon/play_tag) - Shell script frontend to play a specified tag (not yet working)

[**list_zones**](Roon/list_zones) - List the available Roon Zones

[**set_zone**](Roon/set_zone) - Set the Roon Zone in which subsequent commands will run

[**zone_command**](Roon/zone_command) - Shell script frontend for commands to be issued in the selected Roon Zone (e.g. play, pause, mute, unmute, next track, previous track)

[**INSTALL**](Roon/INSTALL) - Describes the installation process

[**install.sh**](Roon/install.sh) - Convenience script to copy scripts into place

[**usage.txt**](Roon/usage.txt) - Frontend "roon" script usage documentation

[**api**](Roon/api/README.md) - Python scripts to call the Roon API with appropriate arguments
