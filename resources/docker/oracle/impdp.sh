#!/bin/bash
cp /opt/dmpdata/CEMETA.DMP /u01/app/admin/CEDB/dpdump/
cp /opt/dmpdata/CEUSER.DMP /u01/app/admin/CEDB/dpdump/
cp /opt/dmpdata/CETRX.DMP /u01/app/admin/CEDB/dpdump/
impdp USERID=CEUSER/CEUSER@CEDB schemas=CEUSER directory=DATA_PUMP_DIR dumpfile=CEUSER.DMP logfile=CEUSER.log
impdp USERID=CEMETA/CEMETA@CEDB schemas=CEMETA directory=DATA_PUMP_DIR dumpfile=CEMETA.DMP logfile=CEMETA.log
impdp USERID=CETRX/CETRX@CEDB schemas=CETRX directory=DATA_PUMP_DIR dumpfile=CETRX.DMP logfile=CETRX.log
