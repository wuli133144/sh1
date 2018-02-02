


#!/bin/bash




if [ $UID -ne 0 ];then
    echo "must be root ..."
    sleep 1
    exit 1
fi


if [ ! -e ./backup ];then
   mkdir -p backup

fi 



find ./  -type f  -mtime +1 -name "*.log" -exec rm -rf {} \;



if [ $? -ne 0 ];then
   
   echo "find success..."
else
   echo "find failed..."

fi
