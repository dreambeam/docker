FROM debian:jessie

MAINTAINER bleza.takouda@ajway.kr

RUN     apt-get -y update
RUN 	apt-get -y upgrade
RUN     apt-get install -y \
            redis-server \
            python \ 
            python-pip

RUN     pip install j2cli

VOLUME /data

EXPOSE  6379
CMD ["redis-server"]
