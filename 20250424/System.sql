-- (1) sqltest/a1234 ����ڸ� �߰��Ͻÿ�.
create user sqltest identified by a1234;

-- (2) �߰��� sqltest ������� ��й�ȣ�� 1234�� �����Ͻÿ�.
alter user  sqltest identified by 1234;

-- (3) �߰��� sqltest ������ ��� ���̺��� ��� ������ �ο��Ͻÿ�.
grant all privileges to sqltest;

SELECT * 
FROM DBA_SYS_PRIVS 
WHERE GRANTEE = 'SQLTEST';

SELECT username, account_status, created 
FROM dba_users 
WHERE username = 'SQLTEST';

-- (4) �߰��� sqltest2/23456 ����� ������ �߰��ϰ�, ��� ������ �ο��Ͻÿ�.
create user sqltest2 identified by 23456;
grant all privileges to sqltest2;

SELECT username, account_status, created 
FROM dba_users 
WHERE username = 'SQLTEST2';

-- (5) sqltest2�� ��� ���̺��� ��� ������ ȸ���ϰ�, sqltest2 ������ �����Ͻÿ�.
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


-- 2. �Ʒ��� ���̺� ��ǥ�� �������� ����Ŭ DBMS�� �����ͺ��̽� ���̺��� �ۼ��ϵ��� �Ͻÿ�.
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

