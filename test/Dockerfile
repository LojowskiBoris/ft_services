FROM debian:buster

MAINTAINER blojowsk

EXPOSE 443

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install nginx -y \
&& apt-get install openssl -y

#&& apk add --no-cache nginx openssl \
#&& adduser -D -g 'www' www \
#&& mkdir -p /run/nginx \
#&& mkdir /www \
#&& chown -R www:www /var/lib/nginx \
#&& chown -R www:www /www \
#&& mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig \
#&& mv /nginx.conf /etc/nginx/ \
#&& mv /index.html /www/ \
#&& mkdir /etc/nginx/ssl \
#&& openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
#    -keyout /etc/nginx/ssl/nginx.fr.key \
#    -out /etc/nginx/ssl/nginx.fr.crt \
#    -subj "/C=FR/ST=RHONE/L=LYON/O=42/OU=Dev/CN=blojowsk"
#
#CMD ["nginx", "-g", "daemon off;"]
