


#!/bin/bash


LIST=$(find ./ -type f -mtime -1 -name "*.sh"  -exec ls {} \;)


echo "next"



for i in ${LIST}

do  

  echo "${i}"

done 





