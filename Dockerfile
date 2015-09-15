
## Use a base ubuntu install
FROM ubuntu:trusty
MAINTAINER erictdawson

## Download dependencies for vg, pretty standard fare
#RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update && apt-get install -y software-properties-common \
    gcc-4.9-base \
    g++ \
    build-essential \
    libpomp-dev \
    python-dev \
    protobuf-compiler \
    libprotoc-dev \
    libjansson-dev \
    automake \
    libtool \
    curl \
    unzip \
    gzip \
    git \
    cmake
RUN apt-get update

## Set CXXFLAGS and CFLAGS for gcc to use SSE4.1
#ENV CXXFLAGS "-O2 -g march=corei7 -mavx -fopenmp -std=c++11"
ENV CXXFLAGS "$CXXFLAGS -march=corei7 -mavx"

## Download VG and its git dependencies
RUN git clone --recursive https://github.com/ekg/vg.git /home/vg
RUN cd /home/vg; make
RUN ln -s "/home/vg/vg" "/usr/bin/vg"
