FROM lsiobase/alpine:3.5
MAINTAINER noname			

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="noxbit version:- ${VERSION} build-date:- ${BUILD_DATE}"

# install packages and symlink libs
RUN \
 apk add --no-cache \
	curl \
	tar \
 mkdir -p \
	/opt/noxbit && \

# install noxbit
 curl -o \
 /tmp/noxbit.tar.gz -L \
	"http://download.noxbit.com/noxbit-pa-x86-64.tar.gz" && \
 tar xf \
 /tmp/noxbit.tar.gz \
	-C /opt/noxbit && \

# cleanup
 rm -rf \
	/tmp/*

# add local files
COPY config/ /opt/noxbit

# ports and volumes
EXPOSE 6689
VOLUME /config /cache
