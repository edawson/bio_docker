FROM ubuntu:14.04
MAINTAINER Eric T Dawson
LABEL "tag"="lumpy-SV"

RUN apt-get update &&  apt-get install -y \
     gcc-4.9 build-essential zlib1g-dev git

RUN mkdir /app
WORKDIR /app
RUN git clone --recursive https://github.com/arq5x/lumpy-sv.git /app/lumpy-sv
RUN cd /app/lump-sv/ && make -j 4
