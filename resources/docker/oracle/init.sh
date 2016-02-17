#!/bin/bash
chown -R oracle:oinstall /opt/oradata /opt/dmpdata /opt/cebin
# if import script file exits, it need to import dmp data, then change import.sh filename to imported.sh
# otherwise start oracle service only
impfile="/opt/cebin/import.sh"
impfiled="/opt/cebin/imported.sh"
su - oracle<<EOF
source ~/.bashrc
sh /opt/cebin/start.sh
if [ -f $impfile ]; then
	sh /opt/cebin/import.sh
	mv $impfile $impfiled
fi	
EOF