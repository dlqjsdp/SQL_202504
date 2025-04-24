-- 2. 아래의 테이블 명세표를 기준으로 오라클 DBMS의 데이터베이스 테이블을 작성하도록 하시오.
-- member
create table member(
    id VARCHAR2(12) primary key,
    password VARCHAR2(12) not null,
    name VARCHAR2(20) not null,
    address VARCHAR2(100),
    tel varchar2(20) not null,
    reg_date date DEFAULT sysdate
);

-- book
CREATE TABLE book (
    bookid NUMBER(10) primary key,
    bookkind VARCHAR2(3) not null,
    booktitle VARCHAR2(50) not null,
    bookprice NUMBER(10) not null,
    bookcount NUMBER(5) not null,
    author VARCHAR2(40),
    pubcom VARCHAR2(40),
    pubdate DATE
);

SELECT table_name 
FROM user_tables;


-- 3. 아래의 예시데이터가 추가될 수 있도록 SQL 구문을 작성하되, 아래 처리 조건에 따라 구현하시오.
-- (1) 도서 테이블에 데이터를 입력할 경우 도서코드에 해당하는 시퀀스(bseq)를 별도로 만들어 자동 순번이 적용되게 할 것.
CREATE SEQUENCE bseq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

insert into book values (bseq.NEXTVAL, 'IT', '이것이 자바다', 30000, 10, '신용권', '한빛미디어', '2021-08-20');
insert into book values (bseq.NEXTVAL, 'IT', '자바웹개발워크북', 31500, 19, '구멍가게코딩단', '남가람북스', '2022-08-04');
insert into book values (bseq.NEXTVAL, 'NV', '하얼빈', 14400, 15, '김훈', '문학동네', '2022-08-03');
insert into book values (bseq.NEXTVAL, 'NV', '불편한편의점', 12600, 10, '김호연', '나무옆의자', '2022-08-10');
insert into book values (bseq.NEXTVAL, 'DV', '역행자', 15750, 8, '자청', '웅진출판', '2022-05-30');
insert into book values (bseq.NEXTVAL, 'DV', '자소서바이블', 18000, 15, '이형', '엔알디', '2022-08-25');
insert into book values (bseq.NEXTVAL, 'HC', '벌거벗은학국사', 17500, 10, 'tvn', '프런트페이지', '2022-08-22');
insert into book values (bseq.NEXTVAL, 'HC', '난중일기', 14000, 30, '이순신', '스타북스', '2022-07-27');
insert into book values (bseq.NEXTVAL, 'TC', '진짜쓰는실무엑셀', 20000, 10, '전진권', '제이펍', '2022-02-15');
insert into book values (bseq.NEXTVAL, 'TC', '빅데이터인공지능', 25000, 15, '박해선', '한빛미디어', '2020-12-21');

commit;
SELECT * FROM book;

-- (2) 회원 테이블에는 기본값이 0인 숫자 데이터를 저장할 포인트(pt) 컬럼을 추가한 후 레코드를 추가할 것.
ALTER TABLE member
ADD pt NUMBER DEFAULT 0;

INSERT INTO member (id, password, name, address, tel, reg_date) VALUES
('ykh', 'a1234', '유광현', '도내동 13', '010-1111-2222', TO_DATE('2022-09-13', 'YYYY-MM-DD'));
INSERT INTO member VALUES
('lhy', 'a3421', '이하영', '마두동 888', '031-2222-3333', TO_DATE('2022-09-13', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('lhn', 'b1111', '이해나', '백석동 777', '010-3333-4444', TO_DATE('2022-09-14', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('jbj', 'c456', '정병진', '성사동 178', '010-4444-5555', TO_DATE('2022-09-15', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('jjs', 'z675', '정진석', '원흥동 75', '031-5555-9999', TO_DATE('2022-09-11', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('cmj', 'q789', '조민재', '창룡동 1004', '010-5555-6666', TO_DATE('2022-09-15', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('hsy', 'g478', '한시연', '창신동 128', '010-6666-7777', TO_DATE('2022-09-13', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('hth', 'd666', '한태현', '행신동 67', '010-7777-8888', TO_DATE('2022-09-14', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('kyj', 'e964', '고유진', '화정동 912', '031-5555-2222', TO_DATE('2022-09-05', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('nsy', 'h369', '남승윤', '홍도동 37', '010-8888-9999', TO_DATE('2022-09-16', 'YYYY-MM-DD'), DEFAULT);

commit;

SELECT id, name, address, tel, reg_date, pt FROM member;

-- (3) 회원 테이블에 아래 레코드를 모두 추가한 후 포인트가 현재 포인트에서 100이 더 증가될 수 있도록 데이터를 갱신할 것.
UPDATE member
SET pt = pt + 100;

SELECT id, name, address, tel, reg_date, pt FROM member;

-- (4) 회원명이 ‘한시연’인 회원의 데이터를 삭제할 것.
DELETE FROM member
WHERE name = '한시연';

SELECT * FROM member
WHERE name = '한시연';

-- (5) 회원 테이블의 포인트(pt) 컬럼의 이름을 회원포인트(mempoint)로 변경할 것.
ALTER TABLE member
RENAME COLUMN pt TO mempoint;

SELECT id, name, address, tel, reg_date, mempoint FROM member;

--4. 아래의 처리조건처럼 레코드(튜플)이 검색될 수 있도록 SQL 구문을 작성하고, 구현하시오.

--(1) 도서(book) 테이블에서 단가(bookprice)가 19000이상 30000이하인 데이터의 도서명(booktitle), 도서가격(bookprice), 저자(author) 를 조회
SELECT booktitle, bookprice, author
FROM book
WHERE bookprice BETWEEN 19000 AND 30000;

-- (2) 도서(book) 테이블에서 출판사(pubcom)이 한빛미디어 이거나 남가람북스인 튜플의 도서명(booktitle), 저자(author), 수량(bookcount)를 조회
SELECT booktitle, author, bookcount
FROM book
WHERE pubcom IN ('한빛미디어', '남가람북스');

-- (3) 아래와 같은 판매(sales) 테이블을 생성하시오.
CREATE TABLE sales (
    sno NUMBER PRIMARY KEY, -- 판매코드(PK)
    bno NUMBER NOT NULL,  -- 도서코드(FK → book 테이블)
    id VARCHAR2(12) NOT NULL,  -- 구매자 id
    amount NUMBER(5) DEFAULT 1 NOT NULL,  -- 구매 수량 (기본값 1)
    money NUMBER,  -- 구매 금액
    salesday DATE DEFAULT SYSDATE,  -- 구매일
    CONSTRAINT bookid_fk FOREIGN KEY (bno) REFERENCES book(bookid)
);

CREATE SEQUENCE sseq;

DESC sales;

-- 5. 아래의 처리조건처럼 레코드(튜플)이 검색될 수 있도록 SQL 구문을 작성하고, 구현하시오.
-- (1) 도서(book) 테이블에서 도서의 수량(bookcount)가 10권 미만인 튜플에 대하여 도서분류(bookkind), 도서명(booktitle), 출판사(pubcom) 을 검색하되 그 결과가 저자(author)의 오름차순으로 정렬하여 표시되도록 하시오.
SELECT bookkind, booktitle, pubcom
FROM book
WHERE bookcount < 10
ORDER BY author;



-- (2) 회원(member) 테이블에서 가입일별 인원수를 구하여 출력하되, 가입일 오름차순으로 출력되도록 하시오.
SELECT reg_date, COUNT(*)
FROM member
GROUP BY reg_date
ORDER BY reg_date ASC;

-- (3) 아래와 같이 판매(sales) 테이블에 데이터를 입력할 것.
insert into sales VALUES (sseq.NEXTVAL, 1, 'lhy', 1,(SELECT bookprice FROM book WHERE bookid = 1) * 1, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 2, 'ykh', 1, (SELECT bookprice FROM book WHERE bookid = 2) * 1, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 1, 'jjs', 2, (SELECT bookprice FROM book WHERE bookid = 1) * 2, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 9, 'lhy', 1, (SELECT bookprice FROM book WHERE bookid = 9) * 1, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 2, 'cmj', 5, (SELECT bookprice FROM book WHERE bookid = 2) * 5, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 2, 'jjs', 3, (SELECT bookprice FROM book WHERE bookid = 2) * 3, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 3, 'yjh', 2, (SELECT bookprice FROM book WHERE bookid = 3) * 2, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 5, 'hsy', 4, (SELECT bookprice FROM book WHERE bookid = 5) * 4, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 4, 'nsy', 8, (SELECT bookprice FROM book WHERE bookid = 4) * 8, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 1, 'jbj', 3, (SELECT bookprice FROM book WHERE bookid = 1) * 3, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 2, 'kyj', 4, (SELECT bookprice FROM book WHERE bookid = 2) * 4, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 7, 'lhn', 1, (SELECT bookprice FROM book WHERE bookid = 7) * 1, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 8, 'hth', 2, (SELECT bookprice FROM book WHERE bookid = 8) * 2, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 10, 'cmj', 5, (SELECT bookprice FROM book WHERE bookid = 10) * 5, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 1, 'lhy', 3, (SELECT bookprice FROM book WHERE bookid = 1) * 3, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 2, 'cmj', 2, (SELECT bookprice FROM book WHERE bookid = 2) * 2, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 2, 'lhy', 1, (SELECT bookprice FROM book WHERE bookid = 2) * 1, SYSDATE);
insert into sales VALUES (sseq.NEXTVAL, 1, 'ykh', 3, (SELECT bookprice FROM book WHERE bookid = 1) * 3, SYSDATE);

SELECT 
  sno 판매코드, 
  bno 도서코드, 
  id 구매자, 
  amount 구매수량, 
  money 구매금액, 
  salesday 구매일
FROM sales
ORDER BY sno;

commit;