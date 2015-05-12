FROM vicamo/buildpack-deps:trusty

RUN echo "deb http://archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list \
	&& echo "deb http://archive.ubuntu.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb http://archive.ubuntu.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list \
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
		google-mock \
		intltool \
		libboost1.54-dev \
		libjsoncpp-dev \
		libprocess-cpp-dev \
		libproperties-cpp-dev \
		libqt5svg5-dev \
		libqt5webkit5-dev \
		libqt5xmlpatterns5-dev \
		libunity-scopes-dev \
		python3 \
		qmlscene \
		qt3d5-dev \
		qt5-default \
		qtbase5-dev \
		qtdeclarative5-dev \
		qtdeclarative5-dev-tools \
		qtlocation5-dev \
		qtmultimedia5-dev \
		qtscript5-dev \
		qtsensors5-dev \
		qttools5-dev \
		qttools5-dev-tools \
		ubuntu-ui-toolkit-doc \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
