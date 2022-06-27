#!/usr/bin/env bash
chown -R mysql:mysql /var/lib/mysql
if [ ! -d /var/lib/mysql/wpdatabase ]; then
service mysql start
sleep 2
mysql -u root -e "CREATE USER IF NOT EXISTS wpuser@'%' IDENTIFIED BY '$WP_PASS';"
mysql -u root -e "source /tmp/script.sql;"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$WP_ROOT_PASS';"
sed -i "s/password =/\password = $WP_ROOT_PASS/" "/etc/mysql/debian.cnf"
service mysql stop
else
service mysql start
sleep 2
sed -i "s/password =/\password = $WP_ROOT_PASS/" "/etc/mysql/debian.cnf"
service mysql stop
fi
exec "$@"
