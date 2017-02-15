-- create perm tablespace
CREATE TABLESPACE tbs_perm_01
  DATAFILE 'tbs_perm_01.dat' 
    SIZE 20M
  ONLINE;

-- create temp tablespace
CREATE TEMPORARY TABLESPACE tbs_tmp_01
  TEMPFILE 'tbs_tmp_01.dbf'
    SIZE 5M
    AUTOEXTEND ON;

-- create user
CREATE USER joel
  IDENTIFIED BY Scribble22
  DEFAULT TABLESPACE tbs_perm_01
  TEMPORARY TABLESPACE tbs_tmp_01
  QUOTA 20M on tbs_perm_01;
  
commit;

-- grant roles
GRANT create session TO joel;
GRANT create table TO joel;
GRANT create view TO joel;
GRANT create any trigger TO joel;
GRANT create any procedure TO joel;
GRANT create sequence TO joel;
GRANT create synonym TO joel;

commit;