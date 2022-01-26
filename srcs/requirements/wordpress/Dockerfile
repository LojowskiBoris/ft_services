FROM debian:buster

EXPOSE 9000

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y php7.3-fpm php7.3-mysql

ADD https://wordpress.org/latest.tar.gz /var/www/html/

RUN tar -xvzf /var/www/html/latest.tar.gz -C /var/www/html/ \
&& rm /var/www/html/latest.tar.gz

COPY ./conf/wp-config.php /var/www/html/wordpress/
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN chown -R www-data:www-data /var/www/html/wordpress \
&& mkdir /run/php

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
