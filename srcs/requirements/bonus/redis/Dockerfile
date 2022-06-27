FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install redis-server -y

EXPOSE 6379

COPY /utils /tmp

CMD ["redis-server", "/tmp/redisjkee.conf"]