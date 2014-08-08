
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
RUN apt-get install -y -q libssl-dev libatlas-dev
RUN apt-get install -y -q python3-dev python3-crypto python3-pip libpython3-dev 
RUN apt-get install -y -q libffi-dev
RUN apt-get install -y -q libatlas3-base libblas-dev libblas3 libatlas-base-dev libatlas-dev
RUN apt-get install -y -q python3-numpy python3-scipy python3-pandas
RUN apt-get install -y -q gfortran
RUN pip3 install -U pip
RUN pip install virtualenv


