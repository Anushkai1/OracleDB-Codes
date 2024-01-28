SELECT tablespace_name
FROM dba_tablespaces;

SELECT file_name, tablespace_name
FROM dba_data_files;

CREATE TABLESPACE JPURA
DATAFILE 'B:\VM\ORACLE\ORADATA\ORCL\JAPURA1.DBF'
SIZE 100m;

























