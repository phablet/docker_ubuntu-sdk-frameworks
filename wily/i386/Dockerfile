FROM vicamo/buildpack-deps:wily-i386

RUN echo "deb http://archive.ubuntu.com/ubuntu/ wily main restricted universe multiverse" > /etc/apt/sources.list \
	&& echo "deb http://archive.ubuntu.com/ubuntu/ wily-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb http://archive.ubuntu.com/ubuntu/ wily-security main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ wily main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ wily-updates main restricted universe multiverse" >> /etc/apt/sources.list \
	&& echo "deb-src http://archive.ubuntu.com/ubuntu/ wily-security main restricted universe multiverse" >> /etc/apt/sources.list \
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
		oxideqt-codecs-extra \
		ubuntu-sdk-libs \
		ubuntu-sdk-libs-dev \
		ubuntu-sdk-libs-tools \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
