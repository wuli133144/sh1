



#!/bin/bash




if [ $UID -ne 0 ];then
   
  echo "must be root..."
  sleep 2
  exit 1
fi


if [ -e ./backup ];then

    mkdir -p ./backup

fi 


LIST=$(find ./ -type f -mtime -1 -name "*.sh" -exec ls {} \; )


if [ $? -ne 0 ];then
    
     echo "find failed..."
     sleep 1
     exit 1
fi 


for i in ${LIST}
do 
   cp ${i} ./backup/
done 
