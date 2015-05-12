FROM vicamo/buildpack-deps:utopic

RUN echo "deb [arch=armhf] http://ports.ubuntu.com/ubuntu-ports utopic main restricted universe multiverse" > /etc/apt/sources.list \
	&& echo "deb [arch=armhf] http://ports.ubuntu.com/ubuntu-ports utopic-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb [arch=armhf] http://ports.ubuntu.com/ubuntu-ports utopic-security main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu utopic main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu utopic-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu utopic-security main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu utopic main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu utopic-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu utopic-security main restricted universe multiverse" >> /etc/apt/sources.list \
	&& ln -sf /bin/true /sbin/initctl \
	&& dpkg --add-architecture armhf \
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
		libc-dev:armhf \
		g++-arm-linux-gnueabihf \
		pkg-config-arm-linux-gnueabihf \
			\
		cmake \
		cmake-extras \
		google-mock:armhf \
		intltool \
		libboost1.55-dev:armhf \
		libcontent-hub-dev:armhf \
		libjsoncpp-dev:armhf \
		libnet-cpp-dev:armhf \
		libprocess-cpp-dev:armhf \
		libproperties-cpp-dev:armhf \
		libqt5keychain0:armhf \
		libqt5sensors5-dev:armhf \
		libqt5svg5-dev:armhf \
		libqt5webkit5-dev:armhf \
		libqt5xmlpatterns5-dev:armhf \
		libunity-scopes-dev:armhf \
		python3 \
		qml-module-qt-labs-settings:armhf \
		qml-module-qtmultimedia:armhf \
		qml-module-qtquick-layouts:armhf \
		qml-module-qtsensors:armhf \
		qml-module-qtwebkit:armhf \
		qmlscene:armhf \
		qt3d5-dev:armhf \
		qt5-default:armhf \
		qtdeclarative5-accounts-plugin:armhf \
		qtdeclarative5-dev-tools \
		qtdeclarative5-folderlistmodel-plugin:armhf \
		qtdeclarative5-localstorage-plugin:armhf \
		qtdeclarative5-online-accounts-client0.1:armhf \
		qtdeclarative5-particles-plugin:armhf \
		qtdeclarative5-poppler1.0:armhf \
		qtdeclarative5-qtlocation-plugin:armhf \
		qtdeclarative5-qtorganizer-plugin:armhf \
		qtdeclarative5-qtpositioning-plugin:armhf \
		qtdeclarative5-u1db1.0:armhf \
		qtdeclarative5-ubuntu-content0.1:armhf \
		qtdeclarative5-ubuntu-download-manager0.1:armhf \
		qtdeclarative5-ubuntu-mediascanner0.1:armhf \
		qtdeclarative5-ubuntu-syncmonitor0.1:armhf \
		qtdeclarative5-ubuntu-telephony-phonenumber0.1:armhf \
		qtdeclarative5-ubuntu-ui-toolkit-plugin:armhf \
		qtdeclarative5-usermetrics0.1:armhf \
		qtdeclarative5-xmllistmodel-plugin:armhf \
		qtlocation5-dev:armhf \
		qtmultimedia5-dev:armhf \
		qtscript5-dev:armhf \
		qttools5-dev:armhf \
		qttools5-dev-tools:armhf \
		ubuntu-html5-theme:armhf \
		ubuntu-ui-toolkit-doc \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
