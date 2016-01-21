FROM alpine:latest

ENV COLLECTD_LISTEN_ADDR 0.0.0.0
ENV COLLECTD_LISTEN_PORT 25826
ENV GRAPHITE_HOST 127.0.0.1
ENV GRAPHITE_PORT 2003

RUN apk --no-cache add collectd

ADD collectd.conf /etc/collectd/collectd.conf
ADD entrypoint.sh /

EXPOSE 25826

CMD [ "entrypoint.sh" ] 
