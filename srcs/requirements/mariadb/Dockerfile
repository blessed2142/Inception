FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server 

COPY /utils /tmp

RUN cp /tmp/50-server.cnf /etc/mysql/mariadb.conf.d

EXPOSE 3306

RUN chmod +x /tmp/db_install.sh

ENTRYPOINT ["/tmp/db_install.sh"]

CMD ["mysqld"]
