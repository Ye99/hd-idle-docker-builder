FROM ubuntu
MAINTAINER Alessio Deiana <adeiana@gmail.com>

RUN apt-get update && apt-get install debhelper wget -y
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget http://sourceforge.net/projects/hd-idle/files/hd-idle-1.04.tgz
RUN tar xvfz hd-idle-*.tgz
RUN cd hd-idle && dpkg-buildpackage -rfakeroot

