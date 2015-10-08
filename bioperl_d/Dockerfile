FROM ubuntu:14.04
MAINTAINER Eric T Dawson


#RUN apt-get update; apt-get install -y apache2
RUN apt-get update && apt-get install -y apache2 apache2-bin curl wget perl
## Update CPAN and module build
RUN curl -SL https://cpan.metacpan.org/authors/id/R/RJ/RJBS/perl-5.22.0.tar.bz2 -o perl-5.22.0.tar.bz2 \
    && echo '400338c91c56420d98142cbfcb84d418cae2c98c *perl-5.22.0.tar.bz2' | sha1sum -c - \
        && tar --strip-components=1 -xjf perl-5.22.0.tar.bz2 -C /usr/src/perl \
            && rm perl-5.22.0.tar.bz2 \
                && cat *.patch | patch -p1 \
                    && ./Configure -Dusethreads -Duse64bitall  -des \
                        && make -j$(nproc) \
                            && make test_harness \
                                && make install \
                                    && cd /usr/src \
                                        && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm \
                                            && chmod +x cpanm \
                                                && ./cpanm App::cpanminus \
                                                    && rm -fr ./cpanm /root/.cpanm /usr/src/perl
RUN cpan CPAN Module::Build

## Install BioPerl using CPAN
RUN cpan install CJFIELDS/BioPerl-1.6.924.tar.gz

