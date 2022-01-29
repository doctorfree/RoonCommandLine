RoonCommandLine version 2.0.2 release 3 fixes a bug introduced by the change to return status of the Bash builtin type command.

RoonCommandLine version 2.0.2 releases add support for detection of the Roon Core port as well as its IP address. The port number is stored in `roon_api.ini` and used in all subsequent calls to the Python Roon API. This was necessary as Roon Labs changed the port number in the most recent update. Extensions shouldn't be assuming a hard coded port number anyway so this change prompted a good improvement although it was irritating at first.

The installation automatically detects and stores the Roon Core IP and port. There is no need for any manual configuration. 

**IMPORTANT NOTE** Older versions of RoonCommandLine will no longer function properly. In order to use RoonCommandLine you must install version 2.0.2 release 1 or later.

[Download the latest Debian or RPM package format release](https://gitlab.com/doctorfree/RoonCommandLine/-/releases)

Install the package on Debian based systems by executing the command
```bash
sudo apt install ./RoonCommandLine_2.0.2-3.deb
```

Install the package on RPM based systems by executing the command
```bash
sudo yum localinstall ./RoonCommandLine-2.0.2-3.rpm
```

Removal of the package on Debian based systems can be accomplished by issuing the command:

```bash
sudo apt remove rooncommandline
```

Removal of the package on RPM based systems can be accomplished by issuing the command:

```bash
sudo yum remove RoonCommandLine
```

To install on Mac OS X, clone the repository and execute the `Install` command:

```bash
git clone https://gitlab.com/doctorfree/RoonCommandLine.git
cd RoonCommandLine
./Install
```
