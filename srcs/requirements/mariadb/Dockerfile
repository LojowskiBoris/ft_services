FROM debian:buster

EXPOSE 3306

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get -y install mariadb-server mariadb-client

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/create_database.sh /
COPY ./conf/wordpress.sql /

ARG MYSQL_DB
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

RUN chmod +x /create_database.sh /wordpress.sql \
&& /create_database.sh \
&& rm /create_database.sh /wordpress.sql

CMD ["mysqld_safe"]
