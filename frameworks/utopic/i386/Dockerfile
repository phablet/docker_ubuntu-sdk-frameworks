FROM vicamo/buildpack-deps:utopic-i386

RUN echo "deb http://archive.ubuntu.com/ubuntu/ utopic main restricted universe multiverse" > /etc/apt/sources.list \
	&& echo "deb http://archive.ubuntu.com/ubuntu/ utopic-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb http://archive.ubuntu.com/ubuntu/ utopic-security main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ utopic main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ utopic-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ utopic-security main restricted universe multiverse" >> /etc/apt/sources.list \
	&& ln -sf /bin/true /sbin/initctl \
	&& (apt-get update || true) \
	&& apt-get -y --force-yes install \
		gnupg ubuntu-keyring \
	&& (echo set debconf/frontend Noninteractive | debconf-communicate) \
	&& (echo set debconf/priority critical | debconf-communicate) \
	&& apt-get -y --force-yes dist-upgrade \
	&& apt-get -y --force-yes install \
		apt-utils \
		build-essential \
		cmake \
		dpkg-cross \
		fakeroot \
		libc-dev \
		g++ \
		pkg-config \
			\
		cmake \
		cmake-extras \
		google-mock \
		intltool \
		libboost1.55-dev \
		libcontent-hub-dev \
		libjsoncpp-dev \
		libnet-cpp-dev \
		libprocess-cpp-dev \
		libproperties-cpp-dev \
		libqt5keychain0 \
		libqt5sensors5-dev \
		libqt5svg5-dev \
		libqt5webkit5-dev \
		libqt5xmlpatterns5-dev \
		libunity-scopes-dev \
		python3 \
		qml-module-qt-labs-settings \
		qml-module-qtmultimedia \
		qml-module-qtquick-layouts \
		qml-module-qtsensors \
		qml-module-qtwebkit \
		qmlscene \
		qt3d5-dev \
		qt5-default \
		qtdeclarative5-accounts-plugin \
		qtdeclarative5-dev-tools \
		qtdeclarative5-folderlistmodel-plugin \
		qtdeclarative5-localstorage-plugin \
		qtdeclarative5-online-accounts-client0.1 \
		qtdeclarative5-particles-plugin \
		qtdeclarative5-poppler1.0 \
		qtdeclarative5-qtlocation-plugin \
		qtdeclarative5-qtorganizer-plugin \
		qtdeclarative5-qtpositioning-plugin \
		qtdeclarative5-u1db1.0 \
		qtdeclarative5-ubuntu-content0.1 \
		qtdeclarative5-ubuntu-download-manager0.1 \
		qtdeclarative5-ubuntu-mediascanner0.1 \
		qtdeclarative5-ubuntu-syncmonitor0.1 \
		qtdeclarative5-ubuntu-telephony-phonenumber0.1 \
		qtdeclarative5-ubuntu-ui-toolkit-plugin \
		qtdeclarative5-usermetrics0.1 \
		qtdeclarative5-xmllistmodel-plugin \
		qtlocation5-dev \
		qtmultimedia5-dev \
		qtscript5-dev \
		qttools5-dev \
		qttools5-dev-tools \
		ubuntu-html5-theme \
		ubuntu-ui-toolkit-doc \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
