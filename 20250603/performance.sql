create table tbl_member(
    userid VARCHAR2(50) not null PRIMARY KEY,
    userpw VARCHAR2(100) not null,
    username VARCHAR2(100) not null,
    regdate date DEFAULT sysdate,
    updatedate date DEFAULT sysdate,
    enabled CHAR(1) DEFAULT '1'
);

create table tbl_member_auth(
    userid VARCHAR2(50) not null,
    auth VARCHAR2(50) not null,
    CONSTRAINT fk_member_auth FOREIGN key(userid) REFERENCES tbl_member(userid)
);

select * from tbl_member;

select * from tbl_member_auth;

commit;