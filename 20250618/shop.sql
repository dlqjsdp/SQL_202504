-- create user '사용자명'@'호스트명' identified by '비밀번호';

-- create user 'testuser'@'localhost'

create user 'testuser'@'%' identified by '1234';

-- grant 권한 on 데이터베이스.테이블 to '사용자명'@'호스트';
-- privileges --> 거의 모든 권한을 부여 dml(insert, delete, update, select),
-- ddl(create, drop, alter..)

grant all privileges on *.* to 'testuser'@'%';

create database shop default character set utf8mb4 collate utf8mb4_general_ci;

use shop;
show tables;

desc item;