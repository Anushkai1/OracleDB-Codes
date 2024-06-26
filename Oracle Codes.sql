SELECT tablespace_name
FROM dba_tablespaces;

SELECT file_name, tablespace_name
FROM dba_data_files;

CREATE TABLESPACE JPURA
DATAFILE 'B:\VM\ORACLE\ORADATA\ORCL\JAPURA1.DBF'
SIZE 100m;

SHOW USER;

CREATE USER USER
IDENTIFIED BY abc
DEFAULT TABLESPACE JPURA1
QUOTA 10m on JPURA
PASSWORD expire;

ALTER USER USER
QUOTA 20m
ON JPURA;

ALTER USER USER
QUOTA 20m
ON TEST2;

GRANT CREATE session
TO USER;

GRANT CREATE table
TO USER; 

CREATE TABLE STU1
(
    id NUMBER(10), 
    name VARCHAR2(30),
    age NUMBER(2)
);

SELECT table_name, tablespace_name
FROM dba_tables
WHERE table_name = 'STU1';

CREATE TABLE STU2 
(
    id NUMBER(10), 
    name VARCHAR2(30),
    age NUMBER(2)
)
TABLESPACE JPURA1;

SELECT table_name, tablespace_name
FROM dba_tables
WHERE table_name = 'STU2';

CONN user/abc;

SELECT table_name, tablespace_name
FROM dba_tables
WHERE table_name = 'STU2';

INSERT INTO STU2 
VALUES ('1','asd', 23);

SELECT * FROM STU2

ROLLBACK;

SELECT * FROM STU2

INSERT INTO STU2
VALUES ('1','asd', 23);
COMMIT;	

SELECT * FROM STU2

SELECT name FROM v$database;

SELECT server from v$session;