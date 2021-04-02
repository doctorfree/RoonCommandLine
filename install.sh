#!/bin/bash

ROON=$HOME/Roon
LBIN=$HOME/bin

[ -d $LBIN ] || mkdir $LBIN
cp *_* $LBIN
[ -d $ROON ] || mkdir $ROON
cp api/*_* $ROON

# Try to configure the roon script with the IP and username
plat=`uname -s`
if [ "$plat" == "Darwin" ]
then
    IP=`ifconfig en0 |awk '/inet / {print $2; }'`
else
    IP=`hostname -I | awk ' { print $1 } '`
fi
USER=`id -u -n`

echo "Setting the Python Roon API server IP address to $IP"
echo "Setting the Python Roon API username for SSH access to $USER"

cat roon | sed -e "s/XX.X.X.XXX/$IP/" -e "s/SSH_USERNAME/$USER/" > /tmp/roon$$
cp roon roon.orig
cp /tmp/roon$$ roon
rm -f /tmp/roon$$

echo ""
echo "In order to configure the Python Roon API we must set the IP address"
echo "of the Roon Core. Discovery will be used to determine the Roon Core IP."
echo "When prompted for authorization, go to a Roon Remote window and click"
echo "    Settings -> Extensions -> Enable"
echo "to authorize discovery"
echo ""

$HOME/bin/get_core_ip 2>&1 | tee /tmp/discover$$
CORE_IP=`cat /tmp/discover$$ | grep -v Waiting`
cat $HOME/Roon/roon_api.ini | sed -e "s/XX.X.X.XX/$CORE_IP/" > /tmp/core$$
cp $HOME/Roon/roon_api.ini $HOME/Roon/roon_api.ini.orig
cp /tmp/core$$ $HOME/Roon/roon_api.ini
rm -f /tmp/core$$ /tmp/discover$$

echo ""
echo "Install the Python Roon API project with 'pip install roonapi'"
echo ""
echo "Verify the 'server' and 'user' settings in the roon script are correct"
echo "and copy the 'roon' frontend shell script to a location in your execution"
echo "PATH on all systems from which you wish to control Roon via SSH"
echo ""
echo "Edit the Python Roon API configuration settings at $ROON/roon_api.ini"
