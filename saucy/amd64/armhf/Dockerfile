FROM vicamo/buildpack-deps:saucy

RUN echo "deb [arch=armhf] http://ports.ubuntu.com/ubuntu-ports saucy main restricted universe multiverse" > /etc/apt/sources.list \
	&& echo "deb [arch=armhf] http://ports.ubuntu.com/ubuntu-ports saucy-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb [arch=armhf] http://ports.ubuntu.com/ubuntu-ports saucy-security main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu saucy main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu saucy-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu saucy-security main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu saucy main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu saucy-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu saucy-security main restricted universe multiverse" >> /etc/apt/sources.list \
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
		libqt5opengl5-dev:armhf \
		libqt5svg5-dev:armhf \
		libqt5v8-5-dev:armhf \
		libqt5webkit5-dev:armhf \
		libqt5xmlpatterns5-dev:armhf \
		qmlscene:armhf \
		qt3d5-dev:armhf \
		qt5-default:armhf \
		qt5-qmake:armhf \
		qtbase5-dev:armhf \
		qtdeclarative5-dev:armhf \
		qtmultimedia5-dev:armhf \
		qtquick1-5-dev:armhf \
		qtscript5-dev:armhf \
		qtsensors5-dev:armhf \
		qttools5-dev:armhf \
		ubuntu-ui-toolkit-doc \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
