show databases;

use shopdb;

create table member(
    name varchar(20) ,
    userid varchar(10) ,
    pwd varchar(10),
    email varchar(20),
    phone char(13),  -- 010-3380-6423
    admin integer default 0, -- 사용자: 0, 관리자:1
    primary key(userid)
);

desc member;

insert into member values('이소미', 'somi', '1234', 'gmd@naver.com','010-2362-5157', 0);
insert into member values('하상오', 'sang12', '1234', 'ha12@naver.com','010-5926-8888', 1);
insert into member values('김윤승', 'light', '1234', 'youn1004@naver.com','010-9999-8282', 0);

select *
from member;

-- ddl (create, drop, alter) -오라클, mysql 자동 commit;
-- dml (insert, update, delete, select) - mysql -자동 commit;, 오라클 -수동 commit