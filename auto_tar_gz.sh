

#!/bin/bash


if [ $UID -ne 0 ];then
  echo "must be root ..."
  sleep 1
  exit 1
fi 


FILE=$(find ./ -type f -mtime -30 -name "*.tar.gz" -exec ls  {} \;)


echo "${FILE}"

if [ $? -ne 0 ];then
   echo "find failed..."
   sleep 1
   exit 1
fi


for i in ${FILE};do
    tar -xvf ${i}
    echo " unzip ${i} is ok...."
    sleep 1
done 

RES=$(ls  *.tar.gz | wc -l)


if [ ${RES} -ne 0 ];then
    rm -rf *.tar.gz
fi

