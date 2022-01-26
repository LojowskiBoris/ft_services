if [ $# -eq 0 ]
then
	echo 'error : usage : ./redirect_localhost domain_name';
else
	if ! grep -qx "127.0.0.1	$1" /etc/hosts
	then
		sudo -- sh -c "echo '127.0.0.1	$1' >> /etc/hosts"
	fi
fi
