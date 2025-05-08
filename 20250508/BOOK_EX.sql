select /*+ index_desc(tbl_board pk_board)*/
rownum rn, bno, title, content, writer, regdate, updatedate
from tbl_board
where rownum <= 1*10;
        
        
select bno, title, content, writer, regdate, updatedate
  	from(
  		select /*+ index_desc(tbl_board pk_board)*/
        rownum rn, bno, title, content, writer, regdate, updatedate
        from tbl_board
        where rownum <= 1*10
  	)
  	where rn > (1-1) * 10;
    
    
select bno, title, content, writer, regdate, updatedate
  	from(
  		select /*+ index_desc(tbl_board pk_board)*/
        rownum rn, bno, title, content, writer, regdate, updatedate
        from tbl_board
        where rownum <= 2*10
  	)
  	where rn > (2-1) * 10;
    
select *
from tbl_board
where title like '수정';

select *
from tbl_board
where title like '%수정%';

select *
from tbl_board
where title like '%' || '%';