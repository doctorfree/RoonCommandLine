Name: RoonCommandLine
Version:    %{_version}
Release:    %{_release}
Summary:    Command line control of the Roon audio system
License:    MIT
BuildArch:  noarch
Requires:   python3-pip
Recommends: qterminal, git
URL:        https://gitlab.com/doctorfree/RoonCommandLine
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
export PATH=/usr/local/bin:$PATH
have_python3=
if type -p python3 > /dev/null
then
    inst_python3=1
else
    inst_python3=
fi
if [ "${inst_python3}" ]
then
    have_python3=1
else
    if type -p python > /dev/null
    then
      inst_python=1
    else
      inst_python=
    fi
    if [ "${inst_python}" ]
    then
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
if [ "${inst_pip3}" ]
then
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
    echo "See https://docs.python-guide.org/starting/install3/osx/"
    echo "for step by step instructions to install Homebrew and Python 3"
    echo "If you already have Homebrew, install Python 3 with:"
    echo "brew install python"
    exit 1
}

%post
exec 1>/proc/${PPID}/fd/1
exec 2>/proc/${PPID}/fd/2
[ -x /usr/local/Roon/etc/postinstall ] && /usr/local/Roon/etc/postinstall

%preun
exec 1>/proc/${PPID}/fd/1
exec 2>/proc/${PPID}/fd/2
[ -x /usr/local/Roon/etc/preremove ] && /usr/local/Roon/etc/preremove

%files
/usr

%changelog
