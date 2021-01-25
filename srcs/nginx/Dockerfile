FROM alpine:3.13

MAINTAINER blojowsk

COPY monsite.conf set_autoindex.sh /

EXPOSE 80 443

RUN apk update && apk upgrade \
&& apk add nginx openrc openssl sed grep vim \
&& rm /etc/nginx/http.d/default.conf \
&& mv /monsite.conf /etc/nginx/http.d \
&& mkdir /var/www/monsite \
&& mkdir /etc/nginx/ssl \
&& openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/monsite.fr.key \
    -out /etc/nginx/ssl/monsite.fr.crt \
    -subj "/C=FR/ST=RHONE/L=LYON/O=42/OU=Dev/CN=www.monsite.fr"

#CMD nginx -g 'daemon off;'

#&& apt-get install -y vim nginx wget git php-fpm mariadb-server php7.3-mysql \
#&& rm /etc/nginx/sites-available/default \
#&& rm /etc/nginx/sites-enabled/default \
#&& mv /monsite.conf /etc/nginx/sites-available \
#&& ln -s /etc/nginx/sites-available/monsite.conf /etc/nginx/sites-enabled/monsite.conf \
#&& mkdir /var/www/monsite \
#&& mkdir /etc/nginx/ssl \
#&& openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
#    -keyout /etc/nginx/ssl/monsite.fr.key \
#    -out /etc/nginx/ssl/monsite.fr.crt \
#    -subj "/C=FR/ST=RHONE/L=LYON/O=42/OU=Dev/CN=www.monsite.fr" \
#&& wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz \
#&& tar -xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz \
#&& rm phpMyAdmin-4.9.0.1-all-languages.tar.gz \
#&& mv phpMyAdmin-4.9.0.1-all-languages /var/www/monsite/phpMyAdmin \
#&& wget -c https://wordpress.org/latest.tar.gz \
#&& tar -xvzf latest.tar.gz \
#&& rm latest.tar.gz \
#&& mv wordpress/ /var/www/monsite/ \
#&& chown -R www-data:www-data /var/www/monsite/wordpress/ \
#&& service nginx start \
#&& service php7.3-fpm start \
#&& service mysql start \
#&& mysql -u root -e "CREATE DATABASE mydb" \
#&& mysql -u root -e "GRANT ALL PRIVILEGES ON mydb.* TO user@localhost IDENTIFIED BY 'password'"
#
#CMD service php7.3-fpm start \
#&& service mysql start \
#&& nginx -g 'daemon off;'
