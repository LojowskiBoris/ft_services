FROM debian:buster

EXPOSE 3306

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get -y install mariadb-server mariadb-client

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/create_database.sh /usr/local/bin/
COPY ./conf/wordpress.sql /usr/local/bin/

#comment this
RUN chmod +x /usr/local/bin/create_database.sh \
&& chmod +x /usr/local/bin/wordpress.sql

ENTRYPOINT ["create_database.sh", "mysqld_safe"]

#try this with 2 last instructions in create_database.sh in comment
RUN chmod +x /create_database.sh && chmod +x /wordpress.sql \
&& /create_database.sh \
&& rm /create_database.sh && rm /wordpress.sql

ENTRYPOINT ["mysqld_safe"]
