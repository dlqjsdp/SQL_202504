create user book_ex identified by book_ex
default tablespace users  -- ���̺�, �ε��� ���� �����ϸ� ����Ǵ� ����
TEMPORARY tablespace temp; -- �ӽ� ������ �����

grant connect, dba to book_ex;

commit;