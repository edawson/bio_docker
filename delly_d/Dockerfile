FROM ubuntu:14.04
MAINTAINER Eric T Dawson
LABEL "tag"="delly_d"
LABEL "version"="0.1"

## Make sure to install zlib and libbz2, though only libbz2 may be necessary.
RUN apt-get update && apt-get install -y \
    git \
    make \
    build-essential \
    zlib1g-dev \
    libbz2-dev
# Download the DELLY Source form Github and build.
RUN git clone --recursive https://github.com/tobiasrausch/delly.git /home/delly/
WORKDIR /home/delly
RUN make all
