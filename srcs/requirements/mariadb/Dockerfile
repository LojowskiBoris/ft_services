FROM debian:buster

EXPOSE 3306

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get -y install mariadb-server mariadb-client

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/create_database.sh /usr/local/bin/
COPY ./conf/wordpress.sql /usr/local/bin/

RUN chmod +x /usr/local/bin/create_database.sh && \
chmod +x /usr/local/bin/wordpress.sql

ENTRYPOINT ["create_database.sh", "mysqld_safe"]
