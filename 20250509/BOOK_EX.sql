select count(*) from tbl_board 
where 
	(title like '%수정%' or content like '%수정%') and
bno > 0;

SELECT COUNT(*) total_count FROM tbl_board;



 select bno, title, content, writer, regdate, updatedate from
( select /*+ index_desc(tbl_board pk_board)*/ 
	rownum rn, bno, title, content, writer, regdate, updatedate 
	from tbl_board 
	where  rownum <= 5 * 10
 ) where 
rn > ( 5 - 1 ) * 10 ;