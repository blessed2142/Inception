# Inception
Docker-compose. Nginx, Wordpress, MariaDB, Redis, Adminer. 
## Requirements:
1) Проект должен быть выполнен на виртуалке. 
2) Все образы (сервисы) должны быть созданы на голой debian:buster.
3) С docker-hub пуллить можно только debian:buster.
4) Ни один пароль не должен быть в докерфайлах в открытом виде. Использование .env обязательно. 
5) bash, tail -f etc. чтобы контейнер "висел" запрещены. 
## Services:
1) Контейнер с NGINX с TLS 1.2 || TLS 1.3;
2) Контейнер с WordPress и php-fpm. Wordpress должен быть настроен заранее, при посещении сайта не дожно быть страницы с настройкой. 
Должно быть два пользователя: один администратор, другой обычный пользователь. NGINX в контейнере быть не должно. 
3) Контейнер с MariaDB. NGINX в контейнере быть не должно. 
4) Volume содержайщий файлы DB.
5) Volume содержайщий файлы WordPress.
6) Docker-network соединящий все контейнеры. 
### Bonuses:
1) Adminer. 
2) Redis cache.
3) Simple static web-site.

## Usage:
1) В браузере в адресной строке: localhost, чтобы просто зайти на сайт. 
2) localhost/wp-admin, зайти в аккаунт. login: frontman, pass: squidgame. 
3) localhost/adminer.php, зайти в adminer. server: mariadb, user: wpuser, pass: password.
4) localhost:81, зайди на статическую html-страничку. Не рекомендуется. В случае если зайдете, после посещения промойте глаза проточной водой. 
