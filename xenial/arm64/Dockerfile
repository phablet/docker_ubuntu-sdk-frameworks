FROM vicamo/buildpack-deps:xenial-arm64

RUN echo "deb http://ports.ubuntu.com/ubuntu-ports xenial main restricted universe multiverse" > /etc/apt/sources.list \
	&& echo "deb http://ports.ubuntu.com/ubuntu-ports xenial-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb http://ports.ubuntu.com/ubuntu-ports xenial-security main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ xenial-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list \
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
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
