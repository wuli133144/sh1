if [[ $UID -ne 0 ]]; then
	#statements
	echo "must be root......"
	sleep 1
	exit 1
fi
#version 1.9.2 $1
if [[ $# -le 0 ]];then
   echo "==========helper====================="
   echo "use it like this:"
   echo ":./checklog.sh 1.9.2"
   echo "then cd 1.9.2 ,you will get a checkfile about im_id not equal user_id information "
   echo "just can count today's information"
   echo "you can use checkfile statistic client version"
   
   echo "==========end========================"
   sleep 1
   exit 1
fi 

PWD="/opt/SunlandsIM/$1/"

cd $PWD
echo "+++++++++++++touch tempfile++++++++++"

touch checklog.log

ERROR_USER_IDS=$(grep -rn   !=     ./msg_server*/log/logtime.log | awk -F , '{print $5}' |uniq)

echo "++++++++++++++loop+++++++user_ids+++++++++"
for i in $ERROR_USER_IDS  ; do
	#statements
	grep -rn user_name=${i}  ./msg_server*/log/logtime.log  >> ${PWD}/checklog.log 
done

echo "++++++++++++success++++++++++++++++++++++++"


 awk -F , '{print $4 ,$9}' ${PWD}/checklog.log |uniq  

echo "this output is user error about user_id!=im_id"

