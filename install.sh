#!/bin/bash

HERE=`pwd`
ROON=$HOME/RoonCommandLine
LBIN=$HOME/bin
ROONAPI_PATCH=roonapi-listmedia.patch
ROONCONF=$HOME/.pyroonconf

[ -d ${LBIN} ] || mkdir ${LBIN}
cp *_* ${LBIN}
[ -d ${ROON} ] || mkdir ${ROON}
cp api/*_* ${ROON}

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
CORE_IP=`cat /tmp/discover$$ | grep RoonCoreIP`
cat ${ROON}/roon_api.ini | grep -v RoonCoreIP > /tmp/core$$
echo "$CORE_IP" >> /tmp/core$$
cp ${ROON}/roon_api.ini ${ROON}/roon_api.ini.orig
cp /tmp/core$$ ${ROON}/roon_api.ini
rm -f /tmp/core$$ /tmp/discover$$

# Locate Python user base
USERSITE=`python -m site --user-site`
# First check the Python user site dir
if [ -d $USERSITE/roonapi ]
then
    PYTHONUSERBASE=`echo $USERSITE | awk -F "/lib/" ' { print $1 } '`
    PYTHON_SITEDIR=`echo $USERSITE | awk -F "/site-packages" ' { print $1 } '`
else
    # Check the global site directories
    SITES=($(python -c 'import site; print(site.getsitepackages())' | tr -d '[],'))
    for site in ${SITES[@]}
    do
        site=`echo $site | sed -e "s/\'//g"`
        [ -d "${site}/roonapi" ] && {
            PYTHONUSERBASE=`echo ${site} | awk -F "/lib/" ' { print $1 } '`
            PYTHON_SITEDIR=`echo ${site} | awk -F "/site-packages" ' { print $1 } '`
            break
        }
    done
fi

if [ "${PYTHONUSERBASE}" ]
then
    if [ -f ${ROONCONF} ]
    then
        grep PYTHONUSERBASE ${ROONCONF} > /dev/null || {
            echo "export PYTHONUSERBASE=${PYTHONUSERBASE}" >> ${ROONCONF}
        }
    else
        echo "export PYTHONUSERBASE=${PYTHONUSERBASE}" > ${ROONCONF}
    fi
    . ${ROONCONF}
    # Apply the Python Roon API patch if it has not already been applied
    if [ "${ROONAPIPATCHED}" = true ]
    then
        echo "Python Roon API already patched. Skipping patch."
    else
        # Locate the patch file
        patchfile=
        if [ -f ${HERE}/patches/${ROONAPI_PATCH} ]
        then
            patchfile=${HERE}/patches/${ROONAPI_PATCH}
        else
            if [ -f $HOME/src/patches/${ROONAPI_PATCH} ]
            then
                patchfile=$HOME/src/patches/${ROONAPI_PATCH}
            else
                echo "Cannot locate patch file ${ROONAPI_PATCH}"
                echo "Python Roon API patch not applied."
                echo "List commands will not function properly."
            fi
        fi
        [ "${patchfile}" ] && {
            patch_inst=`type -p patch`
            if [ "$patch_inst" ]
            then
                cd ${PYTHON_SITEDIR}
                patch -b -p0 < ${patchfile}
                echo "ROONAPIPATCHED=true" >> ${ROONCONF}
            else
                echo "Cannot locate the patch utility. Either patch is not installed"
                echo "or it is not in your execution PATH."
                echo ""
                echo "Skipping the patch for the Python Roon API."
                echo "Listing of Roon library media will not work without this patch."
            fi
        }
    fi
else
    echo "Could not locate the roonapi Python module installation directory"
    echo "Python Roon API patch not applied."
    echo "List commands will not function properly."
fi

DEFZONE=`grep ^DefaultZone ${ROON}/roon_api.ini | awk -F '=' ' { print $2 } '`
# Remove leading and trailing spaces in DEFZONE
DEFZONE="$(echo -e "${DEFZONE}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
# Set ROON_ZONE in .pyroonconf if not already set
if [ -f ${ROONCONF} ]
then
    grep ROON_ZONE ${ROONCONF} > /dev/null || {
        echo "ROON_ZONE=\"$DEFZONE\"" >> ${ROONCONF}
    }
else
    echo "ROON_ZONE=\"$DEFZONE\"" > ${ROONCONF}
fi

echo ""
echo "Verify the 'server' and 'user' settings in the roon script are correct"
echo "and copy the 'roon' frontend shell script to a location in your execution"
echo "PATH on all systems from which you wish to control Roon via SSH"
echo ""
echo "Edit the Roon Command Line configuration settings at:"
echo "${ROON}/roon_api.ini"
echo "and verify the settings in the configuration file ${HOME}/.pyroonconf"
