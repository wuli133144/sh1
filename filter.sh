#!/bin/bash
#
#
#wuyujie
#
#


if [[ $UID -ne 0 ]]; then
	#statements
	echo "error must be root..."
	sleep 1
	exit 1
fi

#查询单聊的shell脚本
grep -rn  HandleMsgSingleData   msg_server*/log/logtime.log* | awk -F, '{ print $4}' |awk -F-  '{
                     for(i=0;i<20;i++)
                     {
                     	  array[i]=5445453+i;
                     	  if(array[i]==$1)
                     	  {
                     	  	 print $1 ,$2
                     	  }
                     }

}' |uniq 

################查询咨询的shell脚本#######################################################
 grep -rn  _HandleConsultData   msg_server*/log/logtime.log* | awk -F, '{ print $4}' |awk -F-  '{
   	   for(i=0;i<30;i++)
   	   {
   	   	array[i]=5445450+i;
   	    if($1==array[i])
   	      {print $1,$2}
   	   }
 }' |uniq 





