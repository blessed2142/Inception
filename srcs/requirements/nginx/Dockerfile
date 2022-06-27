FROM debian:buster

RUN	apt-get update && apt-get upgrade -y && apt-get install -y nginx openssl

COPY default /etc/nginx/sites-available/

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt -subj "/C=RU/ST=Kazan/L=Kazan/O=21/OU=rphoebe/CN=rphoebe.42.fr"

ENTRYPOINT ["nginx", "-g", "daemon off;"]
