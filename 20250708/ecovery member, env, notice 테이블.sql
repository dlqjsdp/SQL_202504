-- 현재 데이터베이스 목록 확인
SHOW DATABASES;

-- ecovery 데이터베이스 생성 (없으면)
create database ecovery default character set utf8mb4 collate utf8mb4_general_ci;

-- ecovery 데이터베이스 사용
USE ecovery;

-- 회원 테이블 생성
CREATE TABLE member (
    member_id BIGINT AUTO_INCREMENT PRIMARY KEY, -- 회원 고유번호 (PK)
    email VARCHAR(255) NOT NULL UNIQUE, -- 로그인 이메일 (중복 불가)
    password VARCHAR(255) NOT NULL, -- 비밀번호
    nickname VARCHAR(50) NOT NULL, -- 닉네임
    role ENUM('USER', 'ADMIN') NOT NULL DEFAULT 'USER', -- 권한 (USER, ADMIN)
    created_at DATE NOT NULL DEFAULT (CURRENT_DATE) -- 가입일자
);

-- 환경톡톡 게시글 테이블 생성
CREATE TABLE env (
    env_id BIGINT AUTO_INCREMENT PRIMARY KEY, -- 게시글 고유번호 (PK)
    member_id BIGINT NOT NULL, -- 작성자 회원 ID (FK)
    title VARCHAR(255) NOT NULL, -- 게시글 제목
    content VARCHAR(1000) NOT NULL, -- 게시글 내용
    view_count INT NOT NULL DEFAULT 0, -- 조회수 (기본값 0)
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, -- 작성일자
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- 수정일자
    CONSTRAINT fk_env_member
        FOREIGN KEY (member_id) REFERENCES member(member_id)
        ON DELETE CASCADE -- 작성자 삭제 시 게시글 삭제
);

-- 공지사항 게시글 테이블 생성
CREATE TABLE notice (
    notice_id BIGINT AUTO_INCREMENT PRIMARY KEY, -- 공지사항 고유번호 (PK)
    member_id BIGINT NOT NULL, -- 작성자 회원 ID (FK)
    title VARCHAR(255) NOT NULL, -- 공지사항 제목
    content VARCHAR(2000) NOT NULL, -- 공지사항 내용
    view_count INT NOT NULL DEFAULT 0, -- 조회수 (기본값 0)
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, -- 작성일자
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- 수정일자
    CONSTRAINT fk_notice_member
        FOREIGN KEY (member_id) REFERENCES member(member_id)
        ON DELETE CASCADE -- 작성자 삭제 시 게시글 삭제
);
