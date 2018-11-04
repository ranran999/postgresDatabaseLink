
# Dockerfile
FROM wnameless/oracle-xe-11g

RUN apt-get update && apt-get install -y unixodbc odbc-postgresql

add initPG_LINK.ora /u01/app/oracle/product/11.2.0/xe/hs/admin/
add odbc.ini /etc/
add listener.ora.tmpl /u01/app/oracle/product/11.2.0/xe/network/admin/
add tnsnames.ora.tmpl /u01/app/oracle/product/11.2.0/xe/network/admin/

#run echo "Check ODBC."
#run echo ODBCINI=/etc/odbc.ini >> /usr/sbin/startup.sh
#run echo export ODBCINI >> /usr/sbin/startup.sh
#run echo 'echo "select * from pg_stat_user_tables;" | isql  PG_LINK -b' >> /usr/sbin/startup.sh

#Check Database link.
add createDatabaseLink.sql /tmp
run echo "cat /tmp/createDatabaseLink.sql | sqlplus -s system/oracle" >> /usr/sbin/startup.sh
