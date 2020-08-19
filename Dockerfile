FROM debian:10.4-slim
MAINTAINER Salvador E. Tropea <set@ieee.org>
LABEL Description="Minimal environment to make Python Debian packages"

RUN apt-get -y update && \
	apt-get -y install --no-install-recommends fakeroot dpkg-dev build-essential debhelper dh-python python3-all && \
	apt-get -y autoremove && \
	rm -rf /var/lib/apt/lists/*

# PyPi
RUN apt-get -y update && \
	apt-get -y install --no-install-recommends python3-setuptools python3-wheel python3-pip twine && \
	apt-get -y autoremove && \
	rm -rf /var/lib/apt/lists/*

# Fake pcbnew, just to avoid errors
RUN mkdir /usr/lib/python3/dist-packages/pcbnew && \
	touch /usr/lib/python3/dist-packages/pcbnew/__init__.py

# Fake yaml, just to avoid errors
RUN mkdir /usr/lib/python3/dist-packages/yaml && \
	touch /usr/lib/python3/dist-packages/yaml/__init__.py
