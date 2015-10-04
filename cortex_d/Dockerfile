FROM ubuntu:14.04
MAINTAINER Eric T Dawson

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    ncurses-* \
    zlib-bin \
    zlibc \
    zlib1g-dev

RUN git clone --recursive https://github.com/mcveanlab/mccortex.git /home/cortex
WORKDIR /home/cortex/
RUN make
