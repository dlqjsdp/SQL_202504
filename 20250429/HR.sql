SELECT * 
FROM board;

SELECT * FROM board ORDER BY num DESC;


INSERT INTO board (num, name, pass, email, title, content, readcount, writedate)
VALUES (73, 'dummy', '1234', 'dummy@dummy.com', '삭제용 더미', '삭제할 더미 게시글', 0, SYSDATE);

DELETE FROM board
WHERE num = 73;

commit;