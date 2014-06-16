
FROM ubuntu:14.04
MAINTAINER Brian Thorne <hardbyte@gmail.com>

# Set correct environment variables.
ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

# Install deps
RUN apt-get update
RUN apt-get upgrade -y
RUN 	apt-get install -y -q --no-install-recommends curl wget git python3-dev build-essential python3-crypto python3-pip

RUN pip3 install -U pip
RUN pip install virtualenv


