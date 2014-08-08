
FROM ubuntu:14.04
MAINTAINER Brian Thorne <hardbyte@gmail.com>

# Set correct environment variables.
ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

# Install deps
RUN apt-get autoclean
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get check
RUN apt-get install -y -q curl wget git gcc build-essential
RUN apt-get install -y -q python3-dev build-essential python3-crypto python3-pip libpython3-dev 
RUN apt-get install -y -q libffi-dev

RUN pip3 install -U pip
RUN pip install virtualenv


