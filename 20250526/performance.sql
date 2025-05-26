select * from tbl_performance;

ALTER TABLE tbl_performance
ADD (
  replyCnt int default 0
);

commit;

select * from tbl_reply;

insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 21, '얼른 가보고 싶어요.', 'replyer01');