#!/bin/bash
projectname=$1
port1=$2
port2=$3
port3=$4
if [ -n "$projectname" ] && [ -n "$port1" ] && [ -n "$port2" ] && [ -n "$port3" ]
then
   echo "******start to create was container: ${projectname}_was, app port:$port1, management console port:$port2, debug port:$port3"
   docker run -it -d --privileged -h was --name ${projectname}_was \
   -p $port1:$port1 -p $port2:$port2 -p $port3:7777 \
   --link ${projectname}_ora:oracle \
   --link ${projectname}_mq:mq \
   -v /opt/ce/$projectname/server/apps:/opt/IBM/WebSphere/AppServer/profiles \
   -v /opt/ce/$projectname/server/cebin:/opt/cebin \
   -v /opt/ce/$projectname/server/ImageCenter:/opt/ImageCenter \
   -v /opt/ce/$projectname/server/params/PARA:/opt/PARA \
   was8557auto:v1
   echo "******container: ${projectname}_was was created successfully!"
else
   echo "******project name and app port and management console port and debug port can not be empty!"
fi
