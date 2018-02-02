

#!/bin/bash


LIST=$(find $1 -type f -mtime -1 -name "*.sh" -exec ls {} \; )

if [ $? -ne 0 ];then
   echo "find failed..."
   sleep 1
   exit 1
fi


for i in ${LIST};do
    if [ ! -x ${i} ];then
       chmod +x ${i}
    fi
done


