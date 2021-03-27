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

[**play_artist**](Roon/play_artist) - Shell script front-end for playing a specified artist in my Roon library

[**play_rp**](Roon/play_rp) - Shell script front-end for playing Radio Paradise Main Channel in a Roon zone

[**play_tull**](Roon/play_tull) - Shell script front-end for playing Jethro Tull songs in my Roon library

[**next_track**](Roon/next_track) - Shell script front-end for playing the next track in a specified zone

[**previous_track**](Roon/previous_track) - Shell script front-end for playing the previous track in a specified zone

[**mute_zone**](Roon/mute_zone) - Shell script front-end for muting a specified zone

[**unmute_zone**](Roon/unmute_zone) - Shell script front-end for unmuting a specified zone

[**stop_zone**](Roon/stop_zone) - Shell script front-end for stopping output on a specified zone

[**api**](Roon/api/README.md) - Python scripts to call the Roon API with appropriate arguments
