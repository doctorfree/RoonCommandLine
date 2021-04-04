#!/bin/bash

ROON=$HOME/RoonCommandLine
LBIN=$HOME/bin
ROONCONF=$HOME/.pyroonconf


for i in *_*
do
    rm -f $LBIN/$i
done
rm -rf $ROON

cp roon.orig roon
rm -f roon.orig

# Locate Python user base
USERSITE=`python -m site --user-site`
ROON_SITE_DIR=
# First check the Python user site dir
if [ -d $USERSITE/roonapi ]
then
    ROON_SITE_DIR=${site}/roonapi
else
    # Check the global site directories
    SITES=($(python -c 'import site; print(site.getsitepackages())' | tr -d '[],'))
    for site in ${SITES[@]}
    do
        [ -d ${site}/roonapi ] && {
            ROON_SITE_DIR=${site}/roonapi
            break
        }
    done
fi

rm -f $ROONCONF

if [ "$ROON_SITE_DIR" ]
then
    # Roll back the Python Roon API patch if it was applied
    cd $ROON_SITE_DIR
    for i in *.orig
    do
        j=`echo $i | sed -e "s/.orig//"`
        mv $i $j
    done
else
    echo "Could not locate the roonapi Python module installation directory"
    echo "Python Roon API patch not reversed."
fi

echo ""
echo "Roon Command Line uninstalled"
