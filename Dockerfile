FROM    mariadb:latest

ENV     MYSQL_DATABASE "DBWEB"
ENV     TERM "dumb"

EXPOSE  3306

ADD     init.sql /docker-entrypoint-initdb.d/