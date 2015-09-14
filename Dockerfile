
## Use a base ubuntu install
FROM ubuntu:trusty
MAINTAINER erictdawson

## Download dependencies for vg, pretty standard fare
#RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get update
RUN apt-get install -y gcc-4.9-base
RUN apt-get install -y g++
RUN apt-get install -y build-essential
RUN apt-get install -y python-dev protobuf-compiler libprotoc-dev libjansson-dev automake libtool \
curl unzip gzip git cmake
RUN apt-get update

## Set CXXFLAGS and CFLAGS for gcc to use SSE4.1
ENV CXXFLAGS "-O3 -g march=corei7"

## Download VG and its git dependencies
RUN git clone --recursive https://github.com/ekg/vg.git /home/vg
RUN cd /home/vg; make
RUN ln -s "/home/vg/vg" "/usr/bin/vg"
