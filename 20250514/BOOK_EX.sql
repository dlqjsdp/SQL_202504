SELECT * 
FROM tbl_reply
order by rno desc;

select *
from tbl_board
order by bno asc;

desc TBL_REPLY;

insert into TBL_REPLY(rno, bno, reply, replyer)
values(seq_reply.nextval, 1704014, 'sql developer�� ��� �Է�', 'ȫ�浿');

commit;