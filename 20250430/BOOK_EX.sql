create table board(
    num number(5) primary key,
    pass VARCHAR2(30),
    name VARCHAR2(30),
    email VARCHAR2(30),
    title VARCHAR2(50),
    content VARCHAR2(1000),
    readcount number(4) default 0, --��ȸ��
    writedate date default sysdate --�ۼ���
);

create sequence board_seq start with 1 INCREMENT by 1;

commit;

insert into board(num, name, email, pass,title, content) values(board_seq.nextval, '������', 'pink@name.com', '1234', 'ù�湮', '�ݰ����ϴ�');

insert into board(num, name, email, pass,title, content) values(board_seq.nextval, '������', 'spring@name.com', '1234', '���־��', '�ݰ����ϴ�');

insert into board(num, name, email, pass,title, content) values(board_seq.nextval, '������', 'react@name.com', '1234', '�Ͻ�', '�ݰ����ϴ�');

insert into board(num, name, email, pass,title, content) values(board_seq.nextval, '����', 'java@name.com', '1234', '�ﱹ��', '�ݰ����ϴ�');

insert into board(num, name, email, pass,title, content) values(board_seq.nextval, '����', 'javascript@name.com', '1234', '���丶', '�ݰ����ϴ�');

select * from board;

commit;