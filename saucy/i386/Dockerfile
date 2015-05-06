FROM vicamo/buildpack-deps:saucy-armhf

RUN echo "deb http://archive.ubuntu.com/ubuntu/ saucy main restricted universe multiverse" > /etc/apt/sources.list \
	&& echo "deb http://archive.ubuntu.com/ubuntu/ saucy-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb http://archive.ubuntu.com/ubuntu/ saucy-security main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ saucy main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ saucy-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ saucy-security main restricted universe multiverse" >> /etc/apt/sources.list \
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
		libqt5opengl5-dev \
		libqt5svg5-dev \
		libqt5v8-5-dev \
		libqt5webkit5-dev \
		libqt5xmlpatterns5-dev \
		qmlscene \
		qt3d5-dev \
		qt5-default \
		qt5-qmake \
		qtbase5-dev \
		qtdeclarative5-dev \
		qtmultimedia5-dev \
		qtquick1-5-dev \
		qtscript5-dev \
		qtsensors5-dev \
		qttools5-dev \
		ubuntu-ui-toolkit-doc \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
