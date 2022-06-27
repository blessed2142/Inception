FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install wget php-fpm php-mysql -y

COPY /utils /tmp

RUN chmod +x /tmp/adminer_install.sh

EXPOSE 8080

ENTRYPOINT ["tmp/adminer_install.sh"]

CMD ["php-fpm7.3", "--nodaemonize"]
