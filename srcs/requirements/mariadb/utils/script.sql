create database if not exists wpdatabase;
grant all privileges on *.* to wpuser@'%';
flush privileges;
quit
