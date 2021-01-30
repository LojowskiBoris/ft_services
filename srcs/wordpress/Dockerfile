#wordpress
FROM alpine:3.13

MAINTAINER blojowsk

EXPOSE 5050

RUN apk update \
&& apk upgrade \
#&& apk add --no-cache wget tar \
&& cd /usr/share/webapps/ \
&& wget http://wordpress.org/latest.tar.gz \
&& tar -xzvf latest.tar.gz \
&& rm latest.tar.gz \
&& chown -R lighttpd /usr/share/webapps/ \
&& ln -s /usr/share/webapps/wordpress/ /var/www/localhost/htdocs/wordpress
