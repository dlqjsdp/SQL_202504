DESC PERSISTENT_LOGINS;

DESC tbl_member_auth;

-- enable 기본값 설정 확인
SELECT column_name, data_default
FROM user_tab_columns
WHERE table_name = 'TBL_MEMBER' AND column_name = 'ENABLED';

-- tbl_member에 email 추가
ALTER TABLE tbl_member
ADD email VARCHAR2(100);

SELECT table_name
FROM user_tables;

SELECT column_name, data_type, data_length, nullable
FROM user_tab_columns
WHERE table_name = 'TBL_MEMBER';

