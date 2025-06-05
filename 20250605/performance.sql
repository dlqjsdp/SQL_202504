CREATE TABLE persistent_logins (
    username VARCHAR2(64) NOT NULL,
    series VARCHAR2(64) PRIMARY KEY,
    token VARCHAR2(64) NOT NULL,
    last_used TIMESTAMP NOT NULL
);

select * 
from persistent_logins;

commit;

SELECT * FROM tbl_member_auth;

SELECT * 
FROM tbl_performance
ORDER BY regdate DESC;