FROM gliderlabs/alpine:3.3

ENV COLLECTD_LISTEN_ADDR 127.0.0.1
ENV COLLECTD_LISTEN_PORT 25826
ENV GRAPHITE_HOST 127.0.0.1
ENV GRAPHITE_PORT 2003

RUN apk add --update collectd 
ADD collectd.conf /etc/collectd/collectd.conf
ADD entrypoint.sh /

EXPOSE 25826

CMD [ "entrypoint.sh" ] 
