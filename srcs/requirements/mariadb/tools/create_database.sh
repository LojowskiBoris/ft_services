#!/bin/sh

/etc/init.d/mysql start

if [ -d "/var/lib/mysql/$MYSQL_DB" ]
then 
	echo "Database already exists"
else
	mysql_secure_installation << EOF

Y
$MYSQL_ROOT_PASSWORD
$MYSQL_ROOT_PASSWORD
Y
Y
Y
Y
EOF

mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DB; GRANT ALL ON $MYSQL_DB.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'; FLUSH PRIVILEGES;"
mysql -uroot -p$MYSQL_ROOT_PASSWORD $MYSQL_DB < /usr/local/bin/wordpress.sql
fi

/etc/init.d/mysql stop

exec "$@"
