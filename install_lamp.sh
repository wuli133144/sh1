

#!/bin/bash
#
#author by wuyujie
#recover mysql data

#++++++++++++++++++++++++++++++++install mysql
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
	#exit 1
fi

echo "install mysql success......."

#++++++++++++++++++++++++++++install apache 
APACHEURL=/usr/sbin/httpd

if [[ ! -e  ${APACHEURL} ]]; then
	#statements
	yum install -y httpd-devel httpd 
	if [[ $? -ne 0 ]]; then
		echo "install failed ......"
		sleep 1
		exit 1
		#statements
	fi
else
	echo "installed apache don't reinstall it"
	sleep 1
	#exit 1
fi

echo "install apache success......."

#+++++++++++++++++++++++++++++++++install php 

PHPURL=/usr/bin/php

if [[ ! -e  ${PHPURL} ]]; then
	#statements
	yum install -y php-devel php 
	if [[ $? -ne 0 ]]; then
		echo "install failed ......"
		sleep 1
		exit 1
		#statements
	fi
else
	echo "installed php don't reinstall it"
	sleep 1
	#exit 1
fi

echo "install php success......."
sleep 1
echo "install lamp success......."