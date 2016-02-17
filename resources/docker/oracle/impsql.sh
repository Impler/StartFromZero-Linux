#!/bin/bash
echo '******imp sql start******'
sqlplus -s "/ as sysdba"<<EOF
@/opt/dmpdata/InitialData_CETRX.sql
@/opt/dmpdata/InitialData_CEUSER.sql
exit
EOF
echo '******imp sql end******' && /bin/bash
