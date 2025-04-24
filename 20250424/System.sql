-- (1) sqltest/a1234 사용자를 추가하시오.
create user sqltest identified by a1234;

-- (2) 추가된 sqltest 사용자의 비밀번호를 1234로 변경하시오.
alter user  sqltest identified by 1234;

-- (3) 추가된 sqltest 계정에 모든 테이블의 모든 권한을 부여하시오.
grant all privileges to sqltest;

SELECT * 
FROM DBA_SYS_PRIVS 
WHERE GRANTEE = 'SQLTEST';

SELECT username, account_status, created 
FROM dba_users 
WHERE username = 'SQLTEST';

-- (4) 추가된 sqltest2/23456 사용자 계정을 추가하고, 모든 권한을 부여하시오.
create user sqltest2 identified by 23456;
grant all privileges to sqltest2;

SELECT username, account_status, created 
FROM dba_users 
WHERE username = 'SQLTEST2';

-- (5) sqltest2에 모든 테이블의 모든 권한을 회수하고, sqltest2 계정을 삭제하시오.
REVOKE CREATE SESSION FROM sqltest2;
REVOKE CREATE TABLE FROM sqltest2;
REVOKE SELECT ANY TABLE FROM sqltest2;
REVOKE INSERT ANY TABLE FROM sqltest2;
REVOKE UPDATE ANY TABLE FROM sqltest2;
REVOKE DELETE ANY TABLE FROM sqltest2;
REVOKE SELECT ANY TABLE FROM sqltest2;

SELECT * 
FROM DBA_ROLE_PRIVS 
WHERE GRANTEE = 'SQLTEST2';

SELECT * 
FROM DBA_TAB_PRIVS 
WHERE GRANTEE = 'SQLTEST2';

DROP USER sqltest2 CASCADE;

SELECT username 
FROM dba_users 
WHERE username = 'SQLTEST2';


-- 2. 아래의 테이블 명세표를 기준으로 오라클 DBMS의 데이터베이스 테이블을 작성하도록 하시오.
-- member
create table member(
    id VARCHAR2(12) primary key,
    password VARCHAR2(12) not null,
    name VARCHAR2(20) not null,
    address VARCHAR2(100),
    tel varchar2(20) not null,
    reg_date date DEFAULT sysdate
);

-- book

