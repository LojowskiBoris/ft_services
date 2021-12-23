#phpmyadmin
FROM alpine:3.13

MAINTAINER blojowsk

EXPOSE 5000

RUN apk update \
&& apk upgrade \
#&& apk add --no-cache wget tar \
&& mkdir -p /usr/share/webapps/ \
&& cd /usr/share/webapps \
&& wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz \
&& tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz \
&& rm phpMyAdmin-5.0.2-all-languages.tar.gz \
&& mv phpMyAdmin-5.0.2-all-languages phpmyadmin \
&& chmod -R 777 /usr/share/webapps/ \
&& ln -s /usr/share/webapps/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin 
