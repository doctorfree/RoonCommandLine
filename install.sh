#!/bin/bash

HERE=`pwd`
ROON=$HOME/Roon
LBIN=$HOME/bin
ROONAPI_PATCH=roonapi-listmedia.patch
ROONCONF=$HOME/.pyroonconf


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

# Locate Python user base
USERSITE=`python -m site --user-site`
# First check the Python user site dir
if [ -d $USERSITE/roonapi ]
then
    PYTHONUSERBASE=`echo $USERSITE | awk -F "/lib/" ' { print $1 } '`
    base=`basename $PYTHONUSERBASE`
    SITEDIR=`echo $USERSITE | awk -F "/${base}/" ' { print $2 } '`
else
    # Check the global site directories
    SITES=($(python -c 'import site; print(site.getsitepackages())' | tr -d '[],'))
    for site in ${SITES[@]}
    do
        [ -d ${site}/roonapi ] && {
            PYTHONUSERBASE=`echo ${site} | awk -F "/lib/" ' { print $1 } '`
            base=`basename $PYTHONUSERBASE`
            SITEDIR=`echo ${site} | awk -F "/${base}/" ' { print $2 } '`
            break
        }
    done
fi

if [ "$PYTHONUSERBASE" ]
then
    if [ -f $ROONCONF ]
    then
        grep PYTHONUSERBASE $ROONCONF > /dev/null || {
            echo "export PYTHONUSERBASE=$PYTHONUSERBASE" >> $ROONCONF
        }
    else
        echo "export PYTHONUSERBASE=$PYTHONUSERBASE" > $ROONCONF
    fi
    # Apply the Python Roon API patch if it has not already been applied
    grep ROONAPIPATCHED $ROONCONF > /dev/null || {
        # Locate the patch file
        patchfile=
        if [ -f $HERE/patches/$ROONAPI_PATCH ]
        then
            patchfile=$HERE/patches/$ROONAPI_PATCH
        else
            if [ -f $HOME/src/patches/$ROONAPI_PATCH ]
            then
                patchfile=$HOME/src/patches/$ROONAPI_PATCH
            else
                echo "Cannot locate patch file $ROONAPI_PATCH"
                echo "Python Roon API patch not applied."
                echo "List commands will not function properly."
            fi
        fi
        [ "$patchfile" ] && {
            cd $PYTHONUSERBASE
            patch -b -p0 < $patchfile
            echo "ROONAPIPATCHED=true" >> $ROONCONF
        }
    }
else
    echo "Could not locate the roonapi Python module installation directory"
    echo "Python Roon API patch not applied."
    echo "List commands will not function properly."
fi

echo ""
echo "Verify the 'server' and 'user' settings in the roon script are correct"
echo "and copy the 'roon' frontend shell script to a location in your execution"
echo "PATH on all systems from which you wish to control Roon via SSH"
echo ""
echo "Edit the Python Roon API configuration settings at $ROON/roon_api.ini"
