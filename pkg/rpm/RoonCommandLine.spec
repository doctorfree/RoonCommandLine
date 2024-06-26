Name: RoonCommandLine
Version:    %{_version}
Release:    %{_release}
Summary:    Command line control of the Roon audio system
License:    MIT
BuildArch:  noarch
Requires:   python3-pip, jq, git
URL:        https://github.com/doctorfree/RoonCommandLine
Vendor:     Doctorwhen's Bodacious Laboratory
Packager:   ronaldrecord@gmail.com

%global __os_install_post %{nil}

%description
Manage your Roon Audio System from the command line

%prep

%build

%install
cp -a %{_sourcedir}/usr %{buildroot}/usr

%pre
exec 1>/proc/${PPID}/fd/1
exec 2>/proc/${PPID}/fd/2
export PATH=$PATH:/usr/local/bin
if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
else
    [ -x /usr/local/bin/brew ] && eval "$(/usr/local/bin/brew shellenv)"
fi
have_python3=
if type -p python3 > /dev/null
then
    inst_python3=1
else
    inst_python3=
fi
if [ "${inst_python3}" ]; then
    have_python3=1
else
    if type -p python > /dev/null
    then
      inst_python=1
    else
      inst_python=
    fi
    if [ "${inst_python}" ]; then
        [[ "$(python --version)" =~ "Python 3" ]] && have_python3=1
    fi
fi
have_pip=
if type -p pip3 > /dev/null
then
    inst_pip3=1
else
    inst_pip3=
fi
if [ "${inst_pip3}" ]; then
    have_pip=1
else
    if type -p pip > /dev/null
    then
      inst_pip=1
    else
      inst_pip=
    fi
    [ "${inst_pip}" ] && have_pip=1
fi
[ "${have_pip}" ] && [ "${have_python3}" ] || {
    echo "RoonCommandLine requires Python 3 and Pip"
    echo "Install Python 3 and restart this installation"
    exit 1
}
if [ -f /usr/local/Roon/etc/roon_api.ini ]; then
    cp /usr/local/Roon/etc/roon_api.ini /tmp/_roon_api_ini_.save
fi
if [ -f /usr/local/Roon/etc/pyroonconf ]; then
    cp /usr/local/Roon/etc/pyroonconf /tmp/_pyroonconf_.save
fi

%post
exec 1>/proc/${PPID}/fd/1
exec 2>/proc/${PPID}/fd/2
if [ -x /usr/local/Roon/etc/postinstall ]; then
    /usr/local/Roon/etc/postinstall
fi

%preun
exec 1>/proc/${PPID}/fd/1
exec 2>/proc/${PPID}/fd/2
if [ $1 -gt 0 ]; then
    ROONETC=/usr/local/Roon/etc
    ROONCONF=${ROONETC}/pyroonconf
    ROON_INI=${ROONETC}/roon_api.ini
    [ -f ${ROON_INI} ] && {
        cp ${ROON_INI} /tmp/_roon_api_ini_.save
    }
    [ -f ${ROONCONF} ] && {
        cp ${ROONCONF} /tmp/_pyroonconf_.save
    }
fi
if [ -x /usr/local/Roon/etc/preremove ]; then
    /usr/local/Roon/etc/preremove
fi
rm -rf /usr/local/Roon/venv

%files
/usr

%changelog
