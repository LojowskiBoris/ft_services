#nginx
FROM alpine:3.13

MAINTAINER blojowsk

COPY monsite.conf set_autoindex.sh /

VOLUME /sys/fs/cgroup

EXPOSE 80 443

RUN apk update \
&& apk upgrade \
&& apk add --no-cache nginx openrc openssl sed grep \
&& mkdir -p /run/openrc \
&& touch /run/openrc/softlevel \
&& mkdir -p /run/nginx \
&& rm /etc/nginx/http.d/default.conf \
&& mv /monsite.conf /etc/nginx/http.d \
&& mkdir /var/www/monsite \
&& mkdir /etc/nginx/ssl \
&& openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/monsite.fr.key \
    -out /etc/nginx/ssl/monsite.fr.crt \
    -subj "/C=FR/ST=RHONE/L=LYON/O=42/OU=Dev/CN=www.monsite.fr"

CMD ["nginx", "-g", "daemon off;"]
