#ftps
FROM alpine:3.13

MAINTAINER blojowsk

EXPOSE 21

RUN apk add --no-cache openrc vsftpd \
&& rc-update add vsftpd default \
&& rc-service vsftpd restart
