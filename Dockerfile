
# Dockerfile
FROM wnameless/oracle-xe-11g

RUN apt-get update && apt-get install -y unixodbc odbc-postgresql

add initdebugPostgres.ora /u01/app/oracle/product/11.2.0/xe/hs/admin/
add odbc.ini /etc/
add listener.ora.tmpl /u01/app/oracle/product/11.2.0/xe/network/admin/
add tnsnames.ora.tmpl /u01/app/oracle/product/11.2.0/xe/network/admin/
