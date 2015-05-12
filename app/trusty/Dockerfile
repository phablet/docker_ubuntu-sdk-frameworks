FROM vicamo/ubuntu-sdk:frameworks-trusty

RUN apt-get update \
	&& apt-get -y --force-yes --no-install-recommends install \
		ubuntu-emulator \
		ubuntu-sdk \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
