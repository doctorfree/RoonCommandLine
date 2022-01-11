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

%post
[ -x /usr/local/Roon/etc/postinstall ] && /usr/local/Roon/etc/postinstall

%preun
[ -x /usr/local/Roon/etc/preremove ] && /usr/local/Roon/etc/preremove

%files
/usr

%changelog
