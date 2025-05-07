SELECT *
FROM tbl_board
order by TITLE desc;

SELECT * 
FROM tbl_board
order by bno desc;

--재귀복사를 통해서 데이터 갯수를 늘린다.. 서브 쿼리 이용

select content
from TBL_BOARD
where title = '서비스 제목';

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
where title = '수정 제목';

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
--where rownum > 11 and rownum <= 20;  // 11부터 20번까지 목록을 2페이지를 출력하고 싶을떄 이렇게 하면 안된다.



-- 1페이지
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

-- 2페이지
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

-- 3페이지
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


-- 최종적인 페이징 처리 코드
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