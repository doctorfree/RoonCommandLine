#!/bin/bash

ROON=$HOME/Roon
LBIN=$HOME/bin

[ -d $LBIN ] || mkdir $LBIN
cp *_* $LBIN
[ -d $ROON ] || mkdir $ROON
cp api/*_* $ROON

echo "Install the Python Roon API project with 'pip install roonapi'"

echo "Copy the 'roon' frontend shell script to a location in your execution PATH"
echo "on all systems from which you wish to control Roon via SSH"

echo "Edit the Python Roon API configuration settings at $ROON/roon_api.ini"
