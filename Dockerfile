FROM debian:10.4-slim
MAINTAINER Salvador E. Tropea <set@ieee.org>
LABEL Description="Minimal environment to make Python Debian packages"

RUN apt-get -y update && \
	apt-get -y install --no-install-recommends fakeroot dpkg-dev build-essential debhelper dh-python python3-all && \
	apt-get -y autoremove && \
	rm -rf /var/lib/apt/lists/*

