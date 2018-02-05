
#!/bin/bash



#define var 
#author by wuyujie



if [[ $UID -ne 0 ]]; then
	echo "must be root......"
	sleep 1
	exit 1
	#statements
fi
STATUS=$(systemctl status mariadb.service  |head -3 |grep "active (running)" |wc -l)

echo "#############17"
if [[ ${STATUS} -eq 0 ]]; then
	echo "################19"
	echo "mysql don't start ......"
	sleep 1
	systemctl start mariadb.service
	if [[ $? -ne 0 ]]; then
		echo "please install mysql..."
		echo "#####################25"
		sleep 1
		exit 1
		#statements
	fi
fi

echo "##################"

DATADIR=/home/sun/mysql/data

if [[  ! -d ${DATADIR}  ]]; then
	mkdir -p ${DATADIR}
	cd ${DATADIR}
	#statements
fi

# copy mysqldata to ${DATADIR}
RESULT=$(mysqldump -uroot test > ${DATADIR}/mysqldb_bak.sql)
if [[ ${RESULT}  -ne 0 ]]; then
	#statements
	echo "mysqldump failed......."
	sleep 1
	exit 1
fi
#remove over 30 day's sqldata
#

FILES=$(find  ./  -type f  -mtime +30  -exec rm -rf {} \;)

if [[ $? -ne 0 ]]; then
	#statements
	echo "romove failed ......."
	sleep 1
	exit 1
fi

echo "mysqldump suceess......"






