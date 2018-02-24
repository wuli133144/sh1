

#!/bin/bash
#
#author by wuyujie
#
#

if [[ $UID -ne 0 ]]; then
	echo  >&2  "must be root ......"
	sleep 1
	exit 1
	#statements
fi


if [[ $# -lt 2 ]]; then
	#statements
	echo >&2 "args less 3"
	sleep 1
	exit 1
fi

scp "$1"  root@"$2":/home/ 

