create table product(
	code number(5) primary key,
	name varchar2(100),
	price number(8),
	pictureurl varchar2(50),
	description varchar2(1000)
);


create sequence product_seq start with 1 increment by 1;

select product_seq.currval from dual;

insert into product values(product_seq.nextval, '������ ���� ����ִ� �����ͺ��̽�', 27000, 'db.jpg', '�����ͺ��̽��� ���� ��� ���� ���� ����ְ� ������ ����...');
insert into product values(product_seq.nextval, '��ǥ���� ���� HTML5', 25000, 'html5.jpg', 'HTML5 ���̵��. Ȩ������ ������ ���� �ʼ� ���� HTML �⺻ ����...');
insert into product values(product_seq.nextval, 'Dynamic Programming book �ø���-01 ����Ŭ 11g + PL/SQL', 25000, 'oracle.jpg','Dynamic �ǹ� ��Ī ���α׷��� Book�� ù��° å����, ����Ŭ 11g�� ���ο� ...');
insert into product values(product_seq.nextval, 'Visual C++ MFC ������ ���α׷���', 26000, 'mfc.jpg', 'Visual C++�� ó�� �����ϴ� ������ �����̿� ���� Visual C++...');
insert into product values(product_seq.nextval, 'jQuery and jQuery Mobile : �����ϱ� ���� Ǯ�', 25000, 'jquery.jpg', '�ҽ� �ϳ��� ����ũž�� ����ϱ��� HTML5�� �Բ� ����Ѵ�. �ʺ��ڵ鵵 ...');
commit;

select *
from product;

delete from product;
DROP TABLE product;

create table product(
	code number(5) primary key,
	name varchar2(100),
	price number(8),
	pictureurl varchar2(50),
	description varchar2(1000)
);

SELECT sequence_name, last_number
FROM user_sequences
WHERE sequence_name = 'PRODUCT_SEQ';

DROP SEQUENCE product_seq;

CREATE SEQUENCE product_seq
START WITH 1
INCREMENT BY 1;

SELECT product_seq.NEXTVAL FROM dual;

DELETE FROM product;
COMMIT;
DROP SEQUENCE product_seq;
CREATE SEQUENCE product_seq
START WITH 1
INCREMENT BY 1;