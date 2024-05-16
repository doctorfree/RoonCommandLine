#!/bin/bash

ROON=/usr/local/Roon
ROONAPI=${ROON}/api
ROONETC=${ROON}/etc
ROONCONF=${ROONETC}/pyroonconf
ZONE=

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
have_real=$(type -p realpath)
[ "${have_real}" ] && SCRIPT_PATH="$(realpath "$SCRIPT_PATH")"

[ -d $ROONAPI ] || exit 1
cd $ROONAPI || exit 1

TEST="${SCRIPT_PATH}/$1"
[ -f $TEST ] || {
  if [ -f ${TEST}.py ]; then
    TEST="${TEST}.py"
  else
    echo "Cannot locate test Python script: $1"
    exit 2
  fi
}
shift

# Use a Python virtual environment
[ -f ${ROON}/venv/bin/activate ] && source ${ROON}/venv/bin/activate
[[ ":$PATH:" == *":/usr/local/Roon/venv/bin:"* ]] || {
  export PATH=/usr/local/Roon/venv/bin:${PATH}
}

if [ -f ${ROONCONF} ]
then
    . ${ROONCONF}
else
    DEFZONE=$(grep ^DefaultZone ${ROONETC}/roon_api.ini | awk -F '=' ' { print $2 } ')
    # Remove leading and trailing spaces in DEFZONE
    DEFZONE="$(echo -e "${DEFZONE}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
    ${ROON}/bin/set_zone "${DEFZONE}"
    . ${ROONCONF}
fi

[ "${ROON_ZONE}" ] || ROON_ZONE="__all__"

have_python3=$(type -p python3)
if [ "${have_python3}" ]
then
    python3 $TEST -z "${ROON_ZONE}" $@
else
    python $TEST -z "${ROON_ZONE}" $@
fi
