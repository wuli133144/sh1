

#!/bin/bash
#author by wuyujie
#


if [[ $UID -ne 0 ]]; then
	echo "must be root ......."
	sleep 1
	exit 1
	#statements
fi


CWD=$(pwd)

for i in $(ls ${CWD} >/dev/null 2>&1) ; do
#    echo "${i}"
     echo "xxx"
done
