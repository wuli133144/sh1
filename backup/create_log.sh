

#!/bin/bash


if [ $UID -ne 0 ];then
   echo "must be root..."
   sleep 1
   exit 1
fi


read num


for (( i=0 ;i<${num}; i++))
do 
   touch   ${i}.log
done 

