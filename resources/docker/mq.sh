#!/bin/bash
projectname=$1
port=$2
if [ -n "$projectname" ] && [ -n "$port" ]
then
   echo "******start to create mq container: ${projectname}_mq port:$port"
   docker run -it -d --privileged --name "$projectname"_mq -p $port:1414 -v /opt/ce/$projectname/mq/cebin:/opt/cebin mq7auto:v1  
   echo "******container: ${projectname}_mq was created successfully!"
else
   echo "******project name and port can not be empty!"
fi
