

#!/bin/bash


if [ $UID -ne 0 ];then
   echo "must be root ... ..."
   sleep 1
   exit 1  
fi 


LIST=$(find ./backup/ -type f -mtime +30 -name "*.log" -exec rm -rf {} \;)

if [ $? -ne 0 ];then
   echo "remove failed..."
   sleep 1
   exit 1
fi


