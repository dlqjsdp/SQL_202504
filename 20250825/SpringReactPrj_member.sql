-- member 데이터베이스를 생성
-- 기본 문자 세트는 utf8mb4로 설정
-- 기본 콜레이션은 utf8mb4_general_ci로 설정
CREATE DATABASE member DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

show databases;

use member;

insert into member(member_id, address, age, name, phone) values('2', '심양', 20, '관우', '010-9999-9999');
insert into member(member_id, address, age, name, phone) values('3', '심양', 27, '유비', '010-9999-9999');
insert into member(member_id, address, age, name, phone) values('4', '심양', 29, '장비', '010-9999-9999');
select * from member;

commit;