
#!/bin/bash
#
#author by wuyujie
#recover mysql data


echo "recovering mysql data ......"

if [[ $UID -ne 0 ]]; then
	#statements
	echo "must be root......"
	sleep 1
	exit 1
fi


DATADIR=/home/sun/mysql/data

if [[ ! -d ${DATADIR} ]]; then
	#statements
	echo "no mysqldata......"
	sleep 1
	exit 1
fi

MYSQLULR=${DATADIR}

 ISEXIT=$(ls  ${MYSQLULR} |grep *.sql|wc -l)

 if [[ ${ISEXIT}  -eq 0 ]]; then

 	#statements
    echo "nosql data need be recovered......"
    sleep 1
    exit 1
 fi

 for i in $(ls ${MYSQLULR} |egrep "*.sql" );do
   mysql -uroot  test < ${i}
   if [[ $? -ne 0 ]]; then
   	echo "recovering failed......"
   	sleep 1
   	exit 1
   	#statements
   fi
 done

 echo "recovering success......"

