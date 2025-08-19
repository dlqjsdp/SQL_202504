create table tbl_member(
    userid VARCHAR2(50) not null PRIMARY KEY,
    userpw VARCHAR2(100) not null,
    username VARCHAR2(100) not null,
    regdate date DEFAULT sysdate,
    updatedate date DEFAULT sysdate,
    enabled CHAR(1) DEFAULT '1'
);

create table tbl_member_auth(
    userid VARCHAR2(50) not null,
    auth VARCHAR2(50) not null,
    CONSTRAINT fk_member_auth FOREIGN key(userid) REFERENCES tbl_member(userid)
);

select * from tbl_member;

select * from tbl_member_auth;


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

select * from performance;


-- CSV������ ������ ����Ʈ �ؾ� �˴ϴ�. �̹��� Ű���� ������� �����Ͱ� �ʿ��ؿ�.
-- Performance ���̺� ��Ŭ�� -> ������ ����Ʈ
-- ������ ���� ����Ʈ ���� ã�ƺ��� Ŭ�� -> csv���� ���� , ���ڵ� utf-8
-- ���� ������ ���� ������ ����Ʈ�� ������ ����
-- csv �����Ͷ� db���̺� Į���̶� ��ġ ��Ű��
-- �� = PNO
-- �з� = CATEGORY
-- ����/���� = EVENTNAME
-- ��¥/�ð� = PERIOD
-- ��� = PLACE
-- �̿��� = TARGET_AUDIENCE
-- �̿��� = FEE
-- Ȩ������ �ּ� = HOMPAGE
-- ��ǥ�̹��� = IMAGE
-- ������ = IS_FREE
-- ���� �Ϸᴩ���� �����Ͱ� insert �˴ϴ�, ������ ������ �����Ͱ� �ѹ��� �� ���ϴ�.


--�̹��� Ű�� ����, IMAGE �����Ϳ��� atchFielId= ���� ���� �� �κ��� Ű������ �����մϴ�  
--api�� db�� ���ؼ� �����͸� ��ȸ�ϴµ� Ȱ�� �˴ϴ� 
UPDATE performance
SET img_key = REGEXP_SUBSTR(image, 'atchFileId=([^&]+)', 1, 1, NULL, 1)
WHERE image LIKE '%atchFileId=%'; --Ű�� ���� �ؼ� img_key�� update

--img_key �ߺ� ������ ���� unique����
ALTER TABLE performance ADD CONSTRAINT unique_img_key UNIQUE (img_key);

select * from performance order by pno desc;

--pno �ڵ����� ������
CREATE SEQUENCE performance_seq
  START WITH 1444 -- ����Ʈ�� ������ ������ ��ȣ ���� ����
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;




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
    content varchar2(1000),
    IMGKEY VARCHAR2(100),
    CATEGORY VARCHAR2(50),
    PLACE VARCHAR2(100)
);

alter table tbl_performance add CONSTRAINT pk_performance
primary key(bno);

desc tbl_performance;

SET DEFINE OFF;

insert into tbl_performance(bno, img_url, title, writer, content)
values(
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=2a690809cd8c4c08a577fc07a780b8c9' || '&' || 'thumb=Y',
    '[���ʹ�ȭ���] ����Ǯ ���� ���� �ø��� [���̵� ����� ���� �ø��� 26]', 
    'user9368', 
    '[���ʹ�ȭ���] ����Ǯ ���� ���� �ø��� [���̵� ����� ���� �ø��� 26]�� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!'
);


insert into tbl_performance(bno, img_url, title, writer, content)
values(
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=75a9ccc313ef4118bb4ad24042466977'|| '&' || 'thumb=Y',
    '[���Ϲ�ȭ���] �ε� �� �׸�
', 
    'user1487
', 
    '[���Ϲ�ȭ���] �ε� �� �׸��� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!
'
);

insert into tbl_performance(bno, img_url, title, writer, content)
values(
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=be205ac9580c4708b3bac96c3af667e6'|| '&' || 'thumb=Y',
    '[������������������] ���� ������ ���� ����ü�� [�ź��� �����! �츮 ���� ��� ����] 2ź - ����� ������', 
    'user1806', 
    '[������������������] ���� ������ ���� ����ü�� [�ź��� �����! �츮 ���� ��� ����] 2ź - ����� �������� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!'
);
SET DEFINE OFF;
INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=e84f434059d0461498d1a86ff0c7ec0b&thumb=Y',
    '[�����Ȱ��ȭ���� ����] ����û�⹮ȭ��ȹ��Ʈ��ũ ''2024 ���� û�� �� �մ�''', 
    'user1135', 
    '[�����Ȱ��ȭ���� ����] ����û�⹮ȭ��ȹ��Ʈ��ũ ''2024 ���� û�� �� �մ�''�� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=d85f6c4547a54b9c9476ba425f6cefc4&thumb=Y
',
    '[���Ϲ�ȭ���] �޺����絵���� - 12��, å���� ����! [�ǲ�! �߿��� ������]
', 
    'user4033
', 
    '[���Ϲ�ȭ���] �޺����絵���� - 12��, å���� ����! [�ǲ�! �߿��� ������]�� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!
'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=a3b531da0b0046439425bd451c143600&thumb=Y
',
    '[������ȭȸ��] ��ҿ� �ǾƳ� ������Ʋ [������Ʈ �ǾƳ� �ַ� ���� �ø��� I]
', 
    'user3152
', 
    '[������ȭȸ��] ��ҿ� �ǾƳ� ������Ʋ [������Ʈ �ǾƳ� �ַ� ���� �ø��� I]�� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!
'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=24eb8b810e2d4e2bae0bdd88bc27947a&thumb=Y

',
    '[������������������] 2025�� ���� 17�ֳ� ��� �����ι��� [Ÿ���� ��ݰ� ����]

', 
    'user9896

', 
    '[������������������] 2025�� ���� 17�ֳ� ��� �����ι��� [Ÿ���� ��ݰ� ����]�� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!

'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=b0d9d89ef3764cc9bf596e602aa654b4&thumb=Y
',
    '[���۹�ȭ���] 2024�� ���۾�Ʈ������ ���ñ�ȹ������ �������� 2�� �������� ��, �̾߱��� ���ۡ�
', 
    'user5651
', 
    '[���۹�ȭ���] 2024�� ���۾�Ʈ������ ���ñ�ȹ������ �������� 2�� �������� ��, �̾߱��� ���ۡ��� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!
'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=64bfbe0a678240eea929e774b2ecb20a&thumb=Y
',
    '[���￪��ڹ���] ��ȹ�� [������ ����ö] ���� ����
', 
    'user5066
', 
    '[���￪��ڹ���] ��ȹ�� [������ ����ö] ���� ������ �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!
'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=4d852eb66064434dac4b746d791af673&thumb=Y
',
    '2025 �ܻ�� ü�ӹ����ɽ�Ʈ�� �ų�����ȸ
', 
    'user6981
', 
    '2025 �ܻ�� ü�ӹ����ɽ�Ʈ�� �ų�����ȸ�� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!
'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=5372753d74594dfc8dcd65e0edf40a83&thumb=Y

',
    '[������ȭȸ��] ���̰� �ִ� ������ [����ô�]

', 
    'user5941

', 
    '[������ȭȸ��] ���̰� �ִ� ������ [����ô�]�� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!

'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=9c99853727344c9f90dd946350d499ab&thumb=Y

',
    '[��������ڹ���] ������ ��������(ȭ������)[3,4�г�]

', 
    'user7907

', 
    '[��������ڹ���] ������ ��������(ȭ������)[3,4�г�]�� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!

'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=f39734f21811414888800a36fc422417&thumb=Y
',
    '[���ﵵ����] ���� ��ȭ�� ��(6��) ��� - �Ѵ��� �۰����� ����
', 
    'user9416
', 
    '[���ﵵ����] ���� ��ȭ�� ��(6��) ��� - �Ѵ��� �۰����� ������ �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!
'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=b6f9a5ec06834613b4b9138c11021ac0&thumb=Y

',
    '[���� û���Ƽ��Ʈ����] �������� �Բ��ϴ� ǳ�� Ž�� ��Ȱ_8��

', 
    'user1050

', 
    '[���� û���Ƽ��Ʈ����] �������� �Բ��ϴ� ǳ�� Ž�� ��Ȱ_8���� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!

'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=52d61b11247347d58e5edc8c30367d2a&thumb=Y
',
    '[���﹮ȭ������������ ��õ] ���� �۾��� [�������� ������ ġ���� �ð�]
', 
    'user9679
', 
    '[���﹮ȭ������������ ��õ] ���� �۾��� [�������� ������ ġ���� �ð�]�� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!
'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=563bdd80d5914f1c83547d8c4a45767b&thumb=Y

',
    '2024 �������� �кθ� Ư������
', 
    'user5794

', 
    '2024 �������� �кθ� Ư�������� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!

'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=29a32ce192544548b85d84ff0427c850&thumb=Y

',
    '[��鼶] �Ƹ��۽������ ��û ���� �߿� ���� [�ٽ� ����, ����� �� 1332]
', 
    'user2607
', 
    '[��鼶] �Ƹ��۽������ ��û ���� �߿� ���� [�ٽ� ����, ����� �� 1332]�� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!


'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=102f459d63d842d5907b4fc173a8ebaa&thumb=Y
',
    '[�����Ʈå����] [�����Ʈ�÷���] �����̳Ŀ� : ��ũ�� ������ ���൹�� ����� �׸���
', 
    'user2967
', 
    '[�����Ʈå����] [�����Ʈ�÷���] �����̳Ŀ� : ��ũ�� ������ ���൹�� ����� �׸��⸦ �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!
'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=75d8a6ec181745128edab37af1b2d3c3&thumb=Y
',
    '2025�� ������ ������ ����
', 
    'user4526
', 
    '2025�� ������ ������ ������ �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!
'
);

INSERT INTO tbl_performance (bno, img_url, title, writer, content)
VALUES (
    seq_performance.nextval, 
    'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=ad0f3e32fb7f4ad280464e12ea296901&thumb=Y

',
    '2024 ����ι̵��ĵ���� 4ȸ����

', 
    'user9866

', 
    '2024 ����ι̵��ĵ���� 4ȸ���ø� �ٳ�Դµ� ���� �λ� ������. ���� ������ ���� ���� ȯ�浵 �����߾��. �������� �� �ٽ� ���� ���� �����Դϴ�!

'
);

commit;

select * from tbl_performance order by BNO;

-- replyCnt �߰�
alter table tbl_performance
add (replyCnt number default 0);

-- ���, �з� �߰�
ALTER TABLE tbl_performance
MODIFY (
    imgkey   VARCHAR2(255),
    place    VARCHAR2(300),
    category VARCHAR2(100)
);



-- ��� ���̺�
create table tbl_reply(
    rno number(10,0),
    bno number(10,0) not null,
    reply varchar2(1000) not null,
    replyer varchar2(50) not null,
    replyDate date default sysdate,
    updateDate date default sysdate
);

create SEQUENCE seq_reply;

alter table tbl_reply add CONSTRAINT pk_reply
primary key(rno);

alter table tbl_reply add CONSTRAINT fk_reply FOREIGN key(bno) REFERENCES tbl_performance(bno);

desc tbl_reply;

-- ��� Ȯ��
select * 
from tbl_reply
order by rno desc;

-- ����¡ ó�� index ����
create index idx_reply on tbl_reply (bno desc, rno asc);

-- ��� Test ���
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '�� ������ �;��.', 'replyer01');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '�����͸� ���� ������ ���Ƴ׿䡦 ��¥ ���ſ�.', 'replyer02');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '���� �����±���! �������� ��ٷȾ��.', 'replyer03');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '������ �ʹ� ������.', 'replyer04');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '�۳⿡ �ٳ�Դµ� ���� ���Ҿ��. ���ص� ���˴ϴ�!', 'replyer05');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '�ð� ���缭 ģ���� ���� ����� �߾��.', 'replyer06');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '���� �ı� �����ֽ� �� ��Ű���? ������ ��� �ñ��ؿ�.', 'replyer07');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '���� ������ �ʹ� ��̷ӳ׿�. ', 'replyer08');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '���� ���� �����մϴ�. ��¥ üũ�صѰԿ�!', 'replyer09');
insert into tbl_reply (rno, bno, reply, replyer)
values(seq_reply.nextval, 20, '�� ����ȸ ���� ���ſ�! �� ������ �ͳ׿�.', 'replyer10');

commit;




commit;