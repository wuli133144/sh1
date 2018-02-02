


#!/bin/bash

if [ $UID -ne 0 ];then
    echo "must be root..."
    sleep 1
    exit 1
fi


if [ ! -e /usr/bin/git ];then
   yum install -y  git   
fi


if [ ! -d .git ];then
    git init
    echo "git init ..."
fi







