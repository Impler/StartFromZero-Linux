#!/bin/bash
projectname=$1
#listener port
port1=$2
#oracle management console port
port2=$3
if [ -n "$projectname" ] && [ -n "$port1" ] && [ -n "$port2" ]
then
   echo "******start to create mq container: ${projectname}_ora, listener port:$port, oracle management console port: $port2"
   docker run -it -d --privileged --name "$projectname"_ora -h oracle \
   -p $port2:5500 -p $port1:1521 \
   -v /opt/ce/$projectname/database/oradata:/opt/oradata \
   -v /opt/ce/$projectname/database/dmpdata:/opt/dmpdata \
   -v /opt/ce/$projectname/database/cebin:/opt/cebin \
   ora12cauto:v1
   echo "******container: ${projectname}_ora was created successfully!"  
else
   echo "******project name and listener port and management console port can not be empty!"
fi
