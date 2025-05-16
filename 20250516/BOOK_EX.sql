desc tbl_board;

alter table tbl_board
add ( replyCnt number default 0);

select * from tbl_board
order by bno desc;

select count(rno) from tbl_reply;

update tbl_board set replycnt = (
    select count(rno) from TBL_REPLY where tbl_reply.bno = tbl_board.bno
);

commit;