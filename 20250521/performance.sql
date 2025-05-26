-- tbl_performance 생성
create SEQUENCE seq_performance;

create table tbl_performance(
    bno number(10,0),
    img_url varchar2(500) not null, 
    title varchar2(200) not null,
    writer varchar2(50) not null,
    readcount number(4) default 0,      -- 조회수
    regdate date default sysdate,       -- 작성일
    updatedate date default sysdate,     -- 수정일
    content varchar2(1000)
);

alter table tbl_performance add CONSTRAINT pk_performance
primary key(bno);

desc tbl_performance;

SET DEFINE OFF;

insert into tbl_performance(bno, img_url, title, writer, content)
values(seq_performance.nextval, 
'https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=5372753d74594dfc8dcd65e0edf40a83&thumb=Y',
'[세종문화회관] 시詩가 있는 무대臺 [가곡시대]', 'user5941', 
'[세종문화회관] 시詩가 있는 무대臺 [가곡시대]를 다녀왔는데 정말 인상 깊었어요. 무대 구성도 좋고 관람 환경도 쾌적했어요. 다음에도 꼭 다시 보고 싶은 공연입니다!');

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

--img_key 중복 방지를 위해 unique설정
ALTER TABLE performance ADD CONSTRAINT unique_img_key UNIQUE (img_key);

select * from performance order by pno desc;

--pno 자동증가 시퀀스
CREATE SEQUENCE performance_seq
  START WITH 1444 -- 임포트한 데이터 마지막 번호 이후 증가
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
  
  --pno 자동증가 트리거, insert구문 실행시 pno 자동증가  
CREATE OR REPLACE TRIGGER performance_before_insert
BEFORE INSERT ON performance
FOR EACH ROW
BEGIN
  IF :NEW.pno IS NULL THEN
    SELECT performance_seq.NEXTVAL INTO :NEW.pno FROM dual;
  END IF;
END;

commit;