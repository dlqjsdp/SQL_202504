-- tbl_performance ����
create SEQUENCE seq_performance;

create table tbl_performance(
    bno number(10,0),
    img_url varchar2(500) not null, 
    title varchar2(200) not null,
    writer varchar2(50) not null,
    readcount number(4) default 0,      -- ��ȸ��
    regdate date default sysdate,       -- �ۼ���
    updatedate date default sysdate,     -- ������
    content varchar2(1000)
);

alter table tbl_performance add CONSTRAINT pk_performance
primary key(bno);

desc tbl_performance;

SET DEFINE OFF;

insert into tbl_performance(bno, img_url, title, writer, content)
values(seq_performance.nextval, 
'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=5372753d74594dfc8dcd65e0edf40a83&thumb=Y',
'[������ȭȸ��] ���̰� �ִ� ������ [����ô�]', 'user5941', 
'[������ȭȸ��] ���̰� �ִ� ������ [����ô�]�� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!');

commit;

select * from tbl_performance;


CREATE TABLE performance (
  pno             NUMBER PRIMARY KEY,
  category        VARCHAR2(100),
  image           VARCHAR2(500),
  eventname       VARCHAR2(500),
  period          VARCHAR2(100),
  place           VARCHAR2(300),
  target_audience VARCHAR2(255),
  is_free         VARCHAR2(50),
  fee             VARCHAR2(255),
  homepage        VARCHAR2(500),
  img_key         VARCHAR2(255)
);

select * from performance order by pno desc;

UPDATE performance
SET img_key = REGEXP_SUBSTR(image, 'atchFileId=([^&]+)', 1, 1, NULL, 1)
WHERE image LIKE '%atchFileId=%';

--img_key �ߺ� ������ ���� unique����
ALTER TABLE performance ADD CONSTRAINT unique_img_key UNIQUE (img_key);

select * from performance order by pno desc;

--pno �ڵ����� ������
CREATE SEQUENCE performance_seq
  START WITH 1444 -- ����Ʈ�� ������ ������ ��ȣ ���� ����
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
  
  --pno �ڵ����� Ʈ����, insert���� ����� pno �ڵ�����  
CREATE OR REPLACE TRIGGER performance_before_insert
BEFORE INSERT ON performance
FOR EACH ROW
BEGIN
  IF :NEW.pno IS NULL THEN
    SELECT performance_seq.NEXTVAL INTO :NEW.pno FROM dual;
  END IF;
END;

commit;