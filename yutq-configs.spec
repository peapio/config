Name:           yutq-configs
Version:        1.0.0
Release:        1
Summary:        for personal config
URL:            https://github.com/peapio
License:        MulanPSL2
Source0:        yutq-configs-%{version}.tar.gz
AutoReqProv:    no

BuildRequires:  python3

Requires:       systemd

%description

for personal linux config



Provides:       %{name} = %{version}-%{release}
Group:          System Environment/Daemons

%{?systemd_requires}

%prep
tar -zxvf %{_sourcedir}/%{name}-%{version}.tar.gz 

%build

%install
cd %{_builddir}/%{name}-%{version}
make install DESTDIR=%{buildroot}

%post

%files

%changelog
* Mon Nov 25 2024 peapio <aqiiii@yeah.net> - 1.0.0-1
- first publish
