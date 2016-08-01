FROM vicamo/buildpack-deps:vivid

RUN echo "deb [arch=armhf] http://ports.ubuntu.com/ubuntu-ports vivid main restricted universe multiverse" > /etc/apt/sources.list \
	&& echo "deb [arch=armhf] http://ports.ubuntu.com/ubuntu-ports vivid-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb [arch=armhf] http://ports.ubuntu.com/ubuntu-ports vivid-security main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu vivid main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu vivid-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu vivid-security main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu vivid main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu vivid-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu vivid-security main restricted universe multiverse" >> /etc/apt/sources.list \
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
		liboxideqt-qmlplugin:armhf \
		oxideqt-codecs-extra \
		ubuntu-html5-container:armhf \
		ubuntu-sdk-libs:armhf \
		ubuntu-sdk-libs-dev:armhf \
		ubuntu-sdk-libs-tools \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
