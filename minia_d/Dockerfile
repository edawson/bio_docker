FROM ubuntu:14.04
MAINTAINER Eric T Dawson

RUN apt-get update && apt-get install -y \
    wget \
    curl \
    git \
    tar
WORKDIR /home
RUN wget http://gatb-tools.gforge.inria.fr/versions/bin/minia-2.0.3-Linux.tar.gz
RUN tar xvzf minia-2.0.3-Linux.tar.gz; ln -s "/home/minia-2.0.3-Linux/bin/minia" "/usr/local/bin"
ENTRYPOINT minia
