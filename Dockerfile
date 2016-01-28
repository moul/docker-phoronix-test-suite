FROM ubuntu:trusty
MAINTAINER Manfred Touron m@42.am

RUN apt-get update \
    && apt-get -y install \
          build-essential wget unzip perl perl-base perl-modules libsdl-perl \
          libperl-dev libpcre3-dev mesa-utils php5-cli php5-gd php5-json \
    && cd /tmp \
    && wget http://phoronix-test-suite.com/releases/repo/pts.debian/files/phoronix-test-suite_6.0.1_all.deb \
    && dpkg -i phoronix-test-suite_6.0.1_all.deb \
    && rm -f phoronix-test-suite_6.0.1_all.deb

ENTRYPOINT ["phoronix-test-suite"]
