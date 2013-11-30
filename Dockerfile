FROM ubuntu:quantal
MAINTAINER Manfred Touron m@42.am

RUN apt-get update
RUN apt-get -y install phoronix-test-suite

ENTRYPOINT ["phoronix-test-suite"]
