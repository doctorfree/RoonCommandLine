Name: RoonCommandLine
Version:    2.0.0
Release:    1
Summary:    RoonCommandLine suite of tools
License:    MIT
BuildArch:  noarch
URL:        https://gitlab.com/doctorfree/RoonCommandLine
Vendor:     Doctorwhen's Bodacious Laboratory
Packager:   ronaldrecord@gmail.com

%description
Manage your Roon Audio System from the command line

%prep
cp -a %{_sourcedir}/usr %{_sourcedir}/BUILDROOT/usr

%build

%install

%post
[ -x /usr/local/Roon/etc/postinstall ] && /usr/local/Roon/etc/postinstall

%preun
[ -x /usr/local/Roon/etc/preremove ] && /usr/local/Roon/etc/preremove

%files
/usr

%changelog
