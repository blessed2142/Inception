FROM debian:buster

RUN	apt-get update && apt-get upgrade -y && apt-get install -y nginx

COPY default /etc/nginx/sites-available/

COPY index.html /var/www/html/

COPY 21.webp /var/www/html/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
