FROM docku/jre8
MAINTAINER Jon Chen <bsd@voltaire.sh>

ENV LOGSTASH_VER 1.4.2

ADD https://download.elasticsearch.org/logstash/logstash/logstash-$LOGSTASH_VER.tar.gz /opt/
RUN /bin/tar -C /opt/ xf /opt/logstash-$LOGSTASH_VER.tar.gz
RUN rm -rf /opt/logstash-$LOGSTASH_VER.tar.gz

ADD run /service/logstash/
