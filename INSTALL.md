# INSTALL

## Python Roon API

Install the Python Roon API (pyrooon) on a system that has Python 3 and that
can access your Roon Core.

Note, verify you have Python 3 and pip already installed. For example,
on an Ubuntu 20.04 system I have installed, it was necessary to first configure
Python 3 as the default Python executable, install pip3, and then
configure pip3 as the default pip:

    $ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10
	$ sudo apt install python3-pip
    $ sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

Once you have verified Python 3 and pip are installed appropriately, install
the Python Roon API. To install the Python Roon API execute the command:

    $ python3 -m pip install roonapi

If you have previously installed the Python Roon API, you can upgrade to the
latest version by executing the command:

    $ python3 -m pip install --upgrade roonapi

## Roon Frontend

The "roon" shell script is a frontend for the other scripts in this project.
It should be installed in the execution PATH on all systems from which remote
Roon command-line execution is desired. The systems on which "roon" is
installed must have public key authorized SSH access to the system on which
pyroon and accompanying scripts are installed. Edit the "roon" script to set
the IP address of your Python Roon API server and the user name (these are the
two variables near the top of the file, "server" and "user"). 

## Install

A convenience installation script, ./macInstall, is provided. Running this script
on the system on which pyroon is installed will copy the Shell and Python scripts
to their appropriate locations. Some automatic configuration will be performed by
the macInstall script. This includes detection of the Python Roon API server IP,
SSH username, and automatic discovery of the Roon Core. In order to perform
discovery the Roon API extension must be enabled. When prompted for authorization,
go to a Roon Remote window and click "Settings -> Extensions -> Enable"
to authorize discovery.

After performing the automated installation, edit the Python Roon API
configuration settings at /usr/local/Roon/etc/roon_api.ini

Alternatively, a manual installation can be performed. Copy all of the scripts
in this directory to ~/bin on the system on which pyroon is installed
    cp *_* ~/bin

Copy all of the Python scripts in the api subdirectory to /usr/local/Roon
on the system on which pyroon is installed
    cp api/*_* /usr/local/Roon/api
Edit /usr/local/Roon/etc/roon_api.ini to set the default values and Roon Core IP address.

## Notes

Note, the first time you execute the roon shell script you may have to enable
the Python Roon API extension by clicking "Settings" -> "Extensions" -> "Enable"
in a Roon Remote client window.

No passwords are used in the SSH invocations in this project. It is assumed that
appropriate SSH Public Key Authentication has been configured for all systems
that will be using SSH to execute commands on the remote pyroon server.