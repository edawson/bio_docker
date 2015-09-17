
## Use a base ubuntu install
FROM ubuntu:trusty
MAINTAINER erictdawson
LABEL "tag"="vg

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
    libevent-2.0-5 \
    libevent-pthreads-2.0-5 \
    libtool \
    curl \
    unzip \
    gzip \
    git \
    cmake \
    pkg-config \
    wget \
    automake

## Set CXXFLAGS and CFLAGS for gcc to use SSE4.1

## Download VG and its git dependencies
RUN git clone --recursive https://github.com/ekg/vg.git /home/vg
WORKDIR /home/vg
RUN make get-deps
RUN make

#COPY ./Makefile /home/vg/Makefile
#RUN cd /home/vg; make
#RUN ln -s "/home/vg/vg" "/usr/bin/vg"
