select *
from board;

select * from board where num = 6;

update board set readcount = readcount+1 where num = 6;

commit;