#!/usr/bin/env bash
sleep 12
mkdir -p /run/php/
touch /run/php/php7.3-fpm.pid
chown -R www-data:www-data	/var/www/*
chmod -R 755			/var/www/*
if [ ! -f /var/www/html/wp-config.php ]; then
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root
sed -i "s/field_to_substitute_with_sed/$WP_PASS/g" /tmp/wp-config.php
cp /tmp/wp-config.php /var/www/html/
wp core install --url=localhost --title=BlessedBaby --admin_user=frontman --admin_password=$USER_PASS --admin_email=frontman@rphoebe.ru --allow-root
wp user create bob bob@example.com --user_pass=$USER_PASS_SECOND --allow-root
wp plugin install redis-cache --activate --allow-root
sleep 5
wp redis enable --allow-root
fi
exec "$@"
