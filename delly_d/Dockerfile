FROM ubuntu:14.04
MAINTAINER Eric T Dawson

# Download the DELLY Source form Github and build.
RUN git clone https://github.com/tobiasrausch/delly.git /home/
WORKDIR /home/delly/
make -j 8 all
