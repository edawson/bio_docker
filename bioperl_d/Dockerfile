FROM perl:5.20.0
MAINTAINER Eric T Dawson


#RUN apt-get update; apt-get install -y apache2
RUN apt-get install -y apache2 apache2-bin 
## Update CPAN and module build
RUN cpan CPAN Module::Build

## Install BioPerl using CPAN
RUN cpan install CJFIELDS/BioPerl-1.6.924.tar.gz

