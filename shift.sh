#!/bin/bash
#
#
#jacwu



if [[ $# -le 0 ]]; then
	#statements
	 echo "error args less 0"
	 sleep 1
	 exit 1
fi

sum=0
while [[ $# -gt 0 ]]; do
	sum=`expr $sum + $1`
	shift
	#statements
done

echo $sum 

