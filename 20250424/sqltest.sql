-- 2. �Ʒ��� ���̺� ��ǥ�� �������� ����Ŭ DBMS�� �����ͺ��̽� ���̺��� �ۼ��ϵ��� �Ͻÿ�.
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


-- 3. �Ʒ��� ���õ����Ͱ� �߰��� �� �ֵ��� SQL ������ �ۼ��ϵ�, �Ʒ� ó�� ���ǿ� ���� �����Ͻÿ�.
-- (1) ���� ���̺� �����͸� �Է��� ��� �����ڵ忡 �ش��ϴ� ������(bseq)�� ������ ����� �ڵ� ������ ����ǰ� �� ��.
CREATE SEQUENCE bseq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

insert into book values (bseq.NEXTVAL, 'IT', '�̰��� �ڹٴ�', 30000, 10, '�ſ��', '�Ѻ��̵��', '2021-08-20');
insert into book values (bseq.NEXTVAL, 'IT', '�ڹ������߿�ũ��', 31500, 19, '���۰����ڵ���', '�������Ͻ�', '2022-08-04');
insert into book values (bseq.NEXTVAL, 'NV', '�Ͼ��', 14400, 15, '����', '���е���', '2022-08-03');
insert into book values (bseq.NEXTVAL, 'NV', '������������', 12600, 10, '��ȣ��', '����������', '2022-08-10');
insert into book values (bseq.NEXTVAL, 'DV', '������', 15750, 8, '��û', '��������', '2022-05-30');
insert into book values (bseq.NEXTVAL, 'DV', '�ڼҼ����̺�', 18000, 15, '����', '���˵�', '2022-08-25');
insert into book values (bseq.NEXTVAL, 'HC', '���Ź����б���', 17500, 10, 'tvn', '����Ʈ������', '2022-08-22');
insert into book values (bseq.NEXTVAL, 'HC', '�����ϱ�', 14000, 30, '�̼���', '��Ÿ�Ͻ�', '2022-07-27');
insert into book values (bseq.NEXTVAL, 'TC', '��¥���½ǹ�����', 20000, 10, '������', '������', '2022-02-15');
insert into book values (bseq.NEXTVAL, 'TC', '�������ΰ�����', 25000, 15, '���ؼ�', '�Ѻ��̵��', '2020-12-21');

commit;
SELECT * FROM book;

-- (2) ȸ�� ���̺��� �⺻���� 0�� ���� �����͸� ������ ����Ʈ(pt) �÷��� �߰��� �� ���ڵ带 �߰��� ��.
ALTER TABLE member
ADD pt NUMBER DEFAULT 0;

INSERT INTO member (id, password, name, address, tel, reg_date) VALUES
('ykh', 'a1234', '������', '������ 13', '010-1111-2222', TO_DATE('2022-09-13', 'YYYY-MM-DD'));
INSERT INTO member VALUES
('lhy', 'a3421', '���Ͽ�', '���ε� 888', '031-2222-3333', TO_DATE('2022-09-13', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('lhn', 'b1111', '���س�', '�鼮�� 777', '010-3333-4444', TO_DATE('2022-09-14', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('jbj', 'c456', '������', '���絿 178', '010-4444-5555', TO_DATE('2022-09-15', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('jjs', 'z675', '������', '���ﵿ 75', '031-5555-9999', TO_DATE('2022-09-11', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('cmj', 'q789', '������', 'â�浿 1004', '010-5555-6666', TO_DATE('2022-09-15', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('hsy', 'g478', '�ѽÿ�', 'â�ŵ� 128', '010-6666-7777', TO_DATE('2022-09-13', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('hth', 'd666', '������', '��ŵ� 67', '010-7777-8888', TO_DATE('2022-09-14', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('kyj', 'e964', '������', 'ȭ���� 912', '031-5555-2222', TO_DATE('2022-09-05', 'YYYY-MM-DD'), DEFAULT);
INSERT INTO member VALUES
('nsy', 'h369', '������', 'ȫ���� 37', '010-8888-9999', TO_DATE('2022-09-16', 'YYYY-MM-DD'), DEFAULT);

commit;

SELECT id, name, address, tel, reg_date, pt FROM member;

-- (3) ȸ�� ���̺� �Ʒ� ���ڵ带 ��� �߰��� �� ����Ʈ�� ���� ����Ʈ���� 100�� �� ������ �� �ֵ��� �����͸� ������ ��.
UPDATE member
SET pt = pt + 100;

SELECT id, name, address, tel, reg_date, pt FROM member;

-- (4) ȸ������ ���ѽÿ����� ȸ���� �����͸� ������ ��.
DELETE FROM member
WHERE name = '�ѽÿ�';

SELECT * FROM member
WHERE name = '�ѽÿ�';

-- (5) ȸ�� ���̺��� ����Ʈ(pt) �÷��� �̸��� ȸ������Ʈ(mempoint)�� ������ ��.
ALTER TABLE member
RENAME COLUMN pt TO mempoint;

SELECT id, name, address, tel, reg_date, mempoint FROM member;

--4. �Ʒ��� ó������ó�� ���ڵ�(Ʃ��)�� �˻��� �� �ֵ��� SQL ������ �ۼ��ϰ�, �����Ͻÿ�.

--(1) ����(book) ���̺��� �ܰ�(bookprice)�� 19000�̻� 30000������ �������� ������(booktitle), ��������(bookprice), ����(author) �� ��ȸ
SELECT booktitle, bookprice, author
FROM book
WHERE bookprice BETWEEN 19000 AND 30000;

-- (2) ����(book) ���̺��� ���ǻ�(pubcom)�� �Ѻ��̵�� �̰ų� �������Ͻ��� Ʃ���� ������(booktitle), ����(author), ����(bookcount)�� ��ȸ
SELECT booktitle, author, bookcount
FROM book
WHERE pubcom IN ('�Ѻ��̵��', '�������Ͻ�');

-- (3) �Ʒ��� ���� �Ǹ�(sales) ���̺��� �����Ͻÿ�.
CREATE TABLE sales (
    sno NUMBER PRIMARY KEY, -- �Ǹ��ڵ�(PK)
    bno NUMBER NOT NULL,  -- �����ڵ�(FK �� book ���̺�)
    id VARCHAR2(12) NOT NULL,  -- ������ id
    amount NUMBER(5) DEFAULT 1 NOT NULL,  -- ���� ���� (�⺻�� 1)
    money NUMBER,  -- ���� �ݾ�
    salesday DATE DEFAULT SYSDATE,  -- ������
    CONSTRAINT bookid_fk FOREIGN KEY (bno) REFERENCES book(bookid)
);

CREATE SEQUENCE sseq;

DESC sales;

-- 5. �Ʒ��� ó������ó�� ���ڵ�(Ʃ��)�� �˻��� �� �ֵ��� SQL ������ �ۼ��ϰ�, �����Ͻÿ�.
-- (1) ����(book) ���̺��� ������ ����(bookcount)�� 10�� �̸��� Ʃ�ÿ� ���Ͽ� �����з�(bookkind), ������(booktitle), ���ǻ�(pubcom) �� �˻��ϵ� �� ����� ����(author)�� ������������ �����Ͽ� ǥ�õǵ��� �Ͻÿ�.
SELECT bookkind, booktitle, pubcom
FROM book
WHERE bookcount < 10
ORDER BY author;



-- (2) ȸ��(member) ���̺��� �����Ϻ� �ο����� ���Ͽ� ����ϵ�, ������ ������������ ��µǵ��� �Ͻÿ�.
SELECT reg_date, COUNT(*)
FROM member
GROUP BY reg_date
ORDER BY reg_date ASC;

-- (3) �Ʒ��� ���� �Ǹ�(sales) ���̺� �����͸� �Է��� ��.
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
  sno �Ǹ��ڵ�, 
  bno �����ڵ�, 
  id ������, 
  amount ���ż���, 
  money ���űݾ�, 
  salesday ������
FROM sales
ORDER BY sno;

commit;