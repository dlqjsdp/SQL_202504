-- 현재 데이터베이스 목록 확인
SHOW DATABASES;

-- ecovery 데이터베이스 생성 (없으면)
create database ecovery default character set utf8mb4 collate utf8mb4_general_ci;

-- ecovery 데이터베이스 사용
USE ecovery;

SHOW TABLES;

DESCRIBE member;
DESCRIBE env;
DESCRIBE member;

USE ecovery;

-- 1) member에 테스트 계정 추가
INSERT INTO member (email, password, nickname, role)
VALUES ('test@example.com', 'password', '테스트유저', 'USER');

-- 2) member_id 값 확인
SELECT member_id FROM member WHERE email = 'test@example.com';

SELECT * FROM member;

-- 3) env에 게시글 추가
INSERT INTO env (member_id, title, content)
VALUES (1, '테스트 게시글 제목', '테스트 게시글 내용');


SELECT * FROM env;

-- 페이징과 검색 테스트용 더미 데이터 추가
INSERT INTO env (member_id, title, content)
VALUES
(1, '페이징 테스트 제목 1', '페이징 테스트 내용 1'),
(1, '페이징 테스트 제목 2', '페이징 테스트 내용 2'),
(1, '페이징 테스트 제목 3', '페이징 테스트 내용 3'),
(1, '페이징 테스트 제목 4', '페이징 테스트 내용 4'),
(1, '페이징 테스트 제목 5', '페이징 테스트 내용 5'),
(1, '페이징 테스트 제목 6', '페이징 테스트 내용 6'),
(1, '페이징 테스트 제목 7', '페이징 테스트 내용 7'),
(1, '페이징 테스트 제목 8', '페이징 테스트 내용 8'),
(1, '페이징 테스트 제목 9', '페이징 테스트 내용 9'),
(1, '페이징 테스트 제목 10', '페이징 테스트 내용 10'),
(1, '페이징 테스트 제목 11', '페이징 테스트 내용 11'),
(1, '페이징 테스트 제목 12', '페이징 테스트 내용 12'),
(1, '페이징 테스트 제목 13', '페이징 테스트 내용 13'),
(1, '페이징 테스트 제목 14', '페이징 테스트 내용 14'),
(1, '페이징 테스트 제목 15', '페이징 테스트 내용 15');