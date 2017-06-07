FROM openjdk:8-alpine
MAINTAINER Bleza Takouda <dreambeam77@gmail.com>

ENV	ZEPPELIN_VERSION 0.7.1
ENV	ZEPPELIN_HOME /zeppelin
ENV DISTR_MIRROR http://mirror.navercorp.com/apache/zeppelin

RUN	apk add --update curl bash tar jq \
	&& mkdir -p ${ZEPPELIN_HOME} \
	#&& curl -L http://mirror.navercorp.com/apache/zeppelin/zeppelin-$ZEPPELIN_VERSION/zeppelin-$ZEPPELIN_VERSION-bin-all.tgz \
	&& curl ${DISTR_MIRROR}/zeppelin-${ZEPPELIN_VERSION}/zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz \
	#| tar xvz -C ${ZEPPELIN_HOME} \
	| tar -xz --strip=1 -C ${ZEPPELIN_HOME} \
	&& rm -rf *.tgz \
	&& rm -rf /var/cache/apk/*

ADD log4j.properties ${ZEPPELIN_HOME}/conf/

WORKDIR	${ZEPPELIN_HOME}

VOLUME	${ZEPPELIN_HOME}/logs
VOLUME	${ZEPPELIN_HOME}/notebook

EXPOSE 8080  8443
CMD ["bin/zeppelin.sh"]