create table member(
    name varchar2(30) NOT null,
    userid varchar2(30) ,
    pwd varchar2(20) NOT null,
    email varchar2(30),
    phone char(13),  -- 010-3380-6423
    admin number(1) default 0, -- �����: 0, ������:1
    primary key(userid)
);

insert into member values('�̼ҹ�', 'somi', '1234', 'gmd@naver.com','010-2362-5157', 0);
insert into member values('�ϻ��', 'sang12', '1234', 'ha12@naver.com','010-5926-8888', 1);
insert into member values('������', 'light', '1234', 'youn1004@naver.com','010-9999-8282', 0);

commit;

SELECT *
FROM MEMBER;


SELECT *
FROM MEMBER
where userid = 'somi';

select pwd from member where userid = 'test';

desc member;