FROM ubuntu:trusty

RUN set -ex \
	&& apt-get update \
	&& apt-get install -y software-properties-common

RUN set -ex \
	&& add-apt-repository ppa:developmentseed/mapbox \
	&& apt-get update \
	&& apt-get install -y tilemill libmapnik nodejs

CMD node /usr/share/tilemill/index.js --server=true --listenHost=0.0.0.0
