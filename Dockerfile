FROM scratch
MAINTAINER Lapo Luchini <lapo@lapo.it>
ENV version 10.3-RELEASE

LABEL Description="FreeBSD $version base installation"

ADD rescue.txz /
ADD fetch.txz /
RUN [ "/rescue/sh", "-c", "/usr/bin/fetch -o - http://ftp.freebsd.org/pub/FreeBSD/releases/amd64/$version/base.txz | /rescue/tar xf -" ]
