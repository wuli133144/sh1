


#!/bin/bash
#
#author by wuyujie
#recover mysql data


echo "installing  mysql......"

if [[ $UID -ne 0 ]]; then
	#statements
	echo "must be root......"
	sleep 1
	exit 1
fi

MYSQLURL=/usr/bin/mysql

if [[ ! -e  ${MYSQLURL} ]]; then
	#statements
	yum install -y mysql-devel mysql-server msyql
	if [[ $? -ne 0 ]]; then
		echo "install failed ......"
		sleep 1
		exit 1
		#statements
	fi
else
	echo "installed mysql don't reinstall it"
	sleep 1
	exit 1
fi

echo "install mysql success......."

