create table member(
    name varchar2(20) ,
    userid varchar2(10) ,
    pwd varchar2(10),
    email varchar2(20),
    phone char(13),  -- 010-3380-6423
    admin number(1) default 0, -- �����: 0, ������:1
    primary key(userid)
);

insert into member values('�̼ҹ�', 'somi', '1234', 'gmd@naver.com','010-2362-5157', 0);
insert into member values('�ϻ��', 'sang', '1234', 'ha12@naver.com','010-5926-8888', 1);
insert into member values('������', 'light', '1234', 'youn1004@naver.com','010-9999-8282', 0);

commit;

SELECT *
from member;

update member set admin='1'
where userid = 'gildong';


CREATE TABLE EMPLOYEES(
    id varchar2(10) not null,
    pass varchar2(10) not null,
    name varchar2(24),
    lev char(1) DEFAULT 'A', -- A : ���, B : �Ϲ�ȸ��
    enter DATE DEFAULT SYSDATE, -- �����
    gender CHAR(1) DEFAULT '1', -- 1 : ����, 2 : ����
    phone varchar2(30),
    primary key(id)
);

insert into EMPLOYEES(id, pass, name, lev, gender, phone) values('pinksung', '3333', '������', 'A', '2', '010-2222-2222');
insert into EMPLOYEES(id, pass, name, lev, gender, phone) values('subin', '1234', '������', 'B', '1', '010-9999-9999');
insert into EMPLOYEES(id, pass, name, lev, gender, phone) values('admin', '1111', '���', 'A', '1', '010-1111-1111');

commit;

SELECT *
from EMPLOYEES;

select id, pass, name,lev, to_char(ENTER, 'YYYY-MM-DD HH:MI:SS') as time, gender, phone 
from employees;
