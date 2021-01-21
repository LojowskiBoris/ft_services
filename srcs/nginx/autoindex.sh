#!/bin/bash

conf="/etc/nginx/sites-available/monsite.conf"
autoindex="$(grep 'autoindex' $conf)"
if [ "$autoindex" = "	autoindex on;" ]
then
	sed -i 's/autoindex on;/autoindex off;/' "$conf";
	echo "autoindex off";
else
	sed -i 's/autoindex off;/autoindex on;/' "$conf";
	echo "autoindex on";
fi
service nginx reload
