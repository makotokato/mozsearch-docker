#!/bin/sh
#/vagrant/infrastructure/web-server-setup.sh /mozsearch-mozilla config3.json /mozilla-index /www
#/vagrant/infrastructure/web-server-run.sh /mozsearch-mozilla /mozilla-index /www
/mozsearch/infrastructure/web-server-setup.sh $1 $2 $3 $4
/mozsearch/infrastructure/web-server-run.sh $1 $3 $4
/etc/init.d/nginx start
tail -f /dev/null
