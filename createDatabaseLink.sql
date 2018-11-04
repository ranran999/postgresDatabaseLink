CREATE DATABASE LINK postgres CONNECT TO "postgres" IDENTIFIED BY "postgres" USING 'PG_LINK';
select * from "pg_database"@postgres;