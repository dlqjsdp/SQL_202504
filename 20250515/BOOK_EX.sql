create index idx_reply on tbl_reply (bno desc, rno asc);

SELECT * 
FROM tbl_reply
order by rno desc;