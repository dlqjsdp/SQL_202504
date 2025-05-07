SELECT *
FROM tbl_board
order by TITLE desc;

SELECT * 
FROM tbl_board
order by bno desc;

--��ͺ��縦 ���ؼ� ������ ������ �ø���.. ���� ���� �̿�

select content
from TBL_BOARD
where title = '���� ����';

select title
from tbl_board
where bno = 10;


select content
from TBL_BOARD
where title = (
                select title
                from tbl_board
                where bno = 10
             );
             
select bno, title, content
from tbl_board;

select bno, title, content
from tbl_board
where bno > 20;

select bno
from (
     select bno, title, content
     from tbl_board
     where bno > 20
     );
     
select bno
from tbl_board;

insert into tbl_board(bno, title, content, writer)
(
    select seq_board.nextval, title, content, writer from tbl_board
);

select seq_board.nextval, title, content, writer from tbl_board;

select * from tbl_board;

commit;

select *
from tbl_board
where title = '���� ����';

select *
from tbl_board
order by bno+1 desc;

select *
from tbl_board
order by bno desc;

select *
from tbl_board
order by content desc;

select *
from tbl_board;

select 
/* +index_desc(tbl_board pk_board) */
*
from tbl_board
where bno > 0;

select *
from tbl_board
order by title desc;

select 
/* +index_desc(tbl_board pk_board_title) */
*
from tbl_board;

create index idx_tbl_board_title
on tbl_board(title);

select
/* +index_desc(tbl_board pk_board) */
rownum rn, bno, title, content
from tbl_board;

select
/* +index_desc(tbl_board pk_board) */
rownum rn, bno, title, content
from tbl_board
where rownum <= 20;

--select
--/* +index_desc(tbl_board pk_board) */
--rownum rn, bno, title, content
--from tbl_board
--where rownum > 11 and rownum <= 20;  // 11���� 20������ ����� 2�������� ����ϰ� ������ �̷��� �ϸ� �ȵȴ�.



-- 1������
select
    bno, title, content
from
(
    select
        /*+ index_asc(tbl_board pk_board) */
        rownum rn, bno, title, content
        from tbl_board
        where rownum <= 10
)
where rn > 0;

-- 2������
select
    bno, title, content
from
(
    select
        /*+ index_asc(tbl_board pk_board) */
        rownum rn, bno, title, content
        from tbl_board
        where rownum <= 20
)
where rn > 10;

-- 3������
select
    bno, title, content
from
(
    select
        /*+ index_asc(tbl_board pk_board) */
        rownum rn, bno, title, content
        from tbl_board
        where rownum <= 30
)
where rn > 20;


-- �������� ����¡ ó�� �ڵ�
select
    bno, title, content
from
(   -- page:1 count:10
    select
        /*+ index_asc(tbl_board pk_board) */
        rownum rn, bno, title, content
        from tbl_board
        where rownum <= (page)*count
)
where rn > (page-1)*count;


select 
/* +index_desc(tbl_board pk_board) */
*
from tbl_board;

commit;

select * from tbl_board where bno > 0 order by bno asc;

select * from global_name;
select sys_context('userenv', 'session_user') from dual;
select max(bno) from tbl_board;

SELECT COUNT(bno)
FROM tbl_board;