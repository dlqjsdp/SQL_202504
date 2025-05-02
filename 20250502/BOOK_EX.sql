SELECT *
FROM tbl_board;

SELECT index_name, column_name
FROM user_ind_columns
WHERE table_name = 'TBL_BOARD';

SELECT * 
FROM tbl_board
order by bno asc;