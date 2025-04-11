create table member(
    name varchar2(20),
    userid varchar2(10),
    pwd varchar2(10),
    email varchar2(20),
    phone char(13), -- 010-3380-6423
    admin number(1) default 0, -- �����: 0, ������: 1
    primary key(userid)
);

insert into member values('�̼ҹ�', 'somi', '1234', 'gmd@naver.com', '010-2362-5157', 0);
insert into member values('�ϻ��', 'sang12', '1234', 'ha12@naver.com', '010-5926-8888', 1);
insert into member values('������', 'light', '1234', 'youn1004@naver.com', '010-9999-8282', 0);

commit;

select * from member;

delete from member;

rollback;

update member
set admin = 1
where name = '�ϻ��';