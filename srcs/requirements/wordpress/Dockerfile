FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install php-fpm php-mysql php-redis curl -y

EXPOSE 9000

COPY /utils /tmp

RUN chmod +x /tmp/wp_install.sh

RUN cp -a /tmp/www.conf /etc/php/7.3/fpm/pool.d/www.conf

ENTRYPOINT ["tmp/wp_install.sh"]

CMD ["php-fpm7.3", "--nodaemonize"]
