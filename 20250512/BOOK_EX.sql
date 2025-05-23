create table tbl_reply(
    rno number(10,0),
    bno number(10,0) not null, --외래키 설정
    reply VARCHAR2(1000) not null,
    replyer VARCHAR2(50) not null,
    replyDate date default sysdate,
    updateDate date default sysdate
);

create SEQUENCE seq_reply;

-- rno : 기본키 설정
alter table tbl_reply
add CONSTRAINT pk_reply primary key(rno);

alter table tbl_reply
add CONSTRAINT fk_reply_board FOREIGN key (bno) REFERENCES tbl_board(bno);

select *
from tbl_board
where rownum < 10
order by bno desc;

select *
from tbl_reply;


select *
from tbl_reply
where bno = 1704015
order by rno desc;