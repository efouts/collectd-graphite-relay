#!/bin/sh

sed -i -e "s/{COLLECTD_LISTEN_ADDR}/$COLLECTD_LISTEN_ADDR/g" ./etc/collectd/collectd.conf
sed -i -e "s/{COLLECTD_LISTEN_PORT}/$COLLECTD_LISTEN_PORT/g" ./etc/collectd/collectd.conf
sed -i -e "s/{GRAPHITE_HOST}/$WRITE_GRAPHITE_HOST/g" ./etc/collectd/collectd.conf
sed -i -e "s/{GRAPHITE_PORT}/$WRITE_GRAPHITE_PORT/g" ./etc/collectd/collectd.conf

/usr/sbin/collectd -C /etc/collectd/collectd.conf -f
