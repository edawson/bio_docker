FROM ubuntu:14.04
MAINTAINER Eric T Dawson


#RUN apt-get update; apt-get install -y apache2
RUN apt-get update && apt-get install -y apache2 apache2-bin \
curl wget perl make \
cmake apache2-dev \
libapache2-mod-perl2 \
libapache2-mod-perl2-dev \
perl
## Update CPAN and module build
RUN cpan CPAN Module::Build

## Install BioPerl using CPAN
RUN cpan install CJFIELDS/BioPerl-1.6.924.tar.gz

