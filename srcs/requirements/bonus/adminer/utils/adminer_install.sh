#!/usr/bin/env bash

mkdir -p /run/php/
touch /run/php/php7.3-fpm.pid
mv tmp/www.conf /etc/php/7.3/fpm/pool.d/www.conf
if [ ! -f /var/www/html/adminer.php ]; then
wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php
fi

exec "$@"
