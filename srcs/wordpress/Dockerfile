#wordpress
FROM alpine

MAINTAINER blojowsk

COPY ./srcs/wp-config.php /

EXPOSE 5050

RUN apk update \
&& apk upgrade \
&& apk add --no-cache wget tar lighttpd php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom \
#&& sed -i.backup 's/#   include "mod_fastcgi.conf"/include "mod_fastcgi.conf"/' /etc/lighttpd/lighttpd.conf \
&& mkdir -p /usr/share/webapps/ \
&& cd /usr/share/webapps/ \
&& wget http://wordpress.org/latest.tar.gz \
&& tar -xzvf latest.tar.gz \
&& rm latest.tar.gz \
&& mv /wp-config.php wordpress/
#&& chown -R lighttpd /usr/share/webapps/ \
#&& ln -s /usr/share/webapps/wordpress/ /var/www/localhost/htdocs/wordpress
