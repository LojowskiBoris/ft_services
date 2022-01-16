#nginx
FROM alpine

MAINTAINER blojowsk

#EXPOSE 80 443

COPY ./nginx.conf ./index.html /

RUN apk update \
&& apk upgrade \
&& apk add --no-cache nginx openssl \
&& adduser -D -g 'www' www \
&& mkdir -p /run/nginx \
&& mkdir /www \
&& chown -R www:www /var/lib/nginx \
&& chown -R www:www /www \
&& mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig \
&& mv /nginx.conf /etc/nginx/ \
&& mv /index.html /www/ \
&& mkdir /etc/nginx/ssl \
&& openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.fr.key \
    -out /etc/nginx/ssl/nginx.fr.crt \
    -subj "/C=FR/ST=RHONE/L=LYON/O=42/OU=Dev/CN=blojowsk"

CMD ["nginx", "-g", "daemon off;"]
