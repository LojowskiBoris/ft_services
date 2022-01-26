FROM debian:buster

EXPOSE 443

ARG DOMAIN_NAME 

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y nginx openssl \
&& openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/private.key \
    -out /etc/ssl/certs/certificate.crt \
    -subj "/C=FR/ST=RHONE/L=LYON/O=42/OU=Dev/CN=user42" \
&& rm -f /etc/nginx/sites-enabled/default

COPY ./conf/nginx.conf /etc/nginx/sites-enabled/

RUN sed -i "s/login.42.fr/$DOMAIN_NAME/" /etc/nginx/sites-enabled/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
