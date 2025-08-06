-- 현재 데이터베이스 목록 확인
SHOW DATABASES;

-- ecovery 데이터베이스 생성 (없으면)
create database ecovery default character set utf8mb4 collate utf8mb4_general_ci;

-- ecovery 데이터베이스 사용
USE ecovery;

SHOW TABLES;

DESCRIBE member;
DESCRIBE env;
DESCRIBE env_img;
DESCRIBE notice;

USE ecovery;

-- 1) member에 테스트 계정 추가
INSERT INTO member (email, password, nickname, role)
VALUES ('test@example.com', 'password', '테스트유저', 'USER');

-- 2) member_id 값 확인
SELECT member_id FROM member WHERE email = 'test@example.com';

SELECT * FROM member;

-- member 테이블에 선택 약관 동의 여부 추가
ALTER TABLE member
ADD agree_optional ENUM('Y', 'N') NOT NULL DEFAULT 'Y';

-- 관리자로 권한 변경
UPDATE member
SET role = 'ADMIN'
WHERE member_id = 2;

UPDATE member
SET role = 'ADMIN'
WHERE email = 'dlqjsdp224@gmail.com';

SELECT * FROM member WHERE email = 'admin@gmail.com';


-- 3) env에 게시글 추가
INSERT INTO env (member_id, title, content)
VALUES (1, '테스트 게시글 제목', '테스트 게시글 내용');

INSERT INTO env (member_id, title, content)
VALUES (1, '테스트 게시글 제목2', '테스트 게시글 내용2');


SELECT * FROM env;

-- 환경톡톡 게시판 카테고리 추가
ALTER TABLE env
ADD category VARCHAR(20);

-- 환경톡톡 게시판 수정일 자동갱신 삭제
ALTER TABLE env
MODIFY COLUMN updated_at DATETIME 
NOT NULL 
DEFAULT CURRENT_TIMESTAMP;

-- 환경톡톡 게시판 내용 글자수 변경
ALTER TABLE env
MODIFY content VARCHAR(5000) NOT NULL;

-- 환경톡톡 이미지 테이블 추가
CREATE TABLE env_img (
    env_img_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    env_id BIGINT NOT NULL,
    img_name VARCHAR(255) NOT NULL,
    ori_img_name VARCHAR(255),
    img_url VARCHAR(500) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (env_id) REFERENCES env(env_id) ON DELETE CASCADE
);

SELECT * FROM env_img;




DELETE FROM env_img;

ALTER TABLE env_img
MODIFY COLUMN img_name VARCHAR(255) NULL,
MODIFY COLUMN img_url VARCHAR(500) NULL;

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


SELECT * FROM notice;

-- 5) notice에 게시글 추가
INSERT INTO notice (member_id, title, content)
VALUES (1, '테스트 공지사항 제목', '테스트 공지사항 내용');

INSERT INTO notice (member_id, title, content)
VALUES (1, '테스트 공지사항 제목2', '테스트 공지사항 내용2');

-- notice에 카테고리 추가
ALTER TABLE notice
ADD category VARCHAR(20);

SHOW CREATE TABLE notice;

-- 공지사항 게시판 수정일 자동갱신 삭제
ALTER TABLE notice 
MODIFY COLUMN updated_at DATETIME 
NOT NULL 
DEFAULT CURRENT_TIMESTAMP;

-- 페이징과 검색 테스트용 더미 데이터 추가
INSERT INTO notice (member_id, title, content)
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

-- 카카오 로그인 지원을 위한 컬럼 추가, 비밀번호 null 값 허용
ALTER TABLE member
MODIFY password VARCHAR(255) NULL;

ALTER TABLE member
ADD COLUMN provider VARCHAR(20) NOT NULL DEFAULT 'local',
ADD COLUMN provider_id VARCHAR(100);


SELECT * FROM item;

-- 에코마켓 상품 카테고리 table (category)
create table category (
	category_id bigint auto_increment primary key,
    category_name varchar(255) not null unique
);

-- 에코마켓 상품 정보 table (item)
create table item (
                      item_id bigint auto_increment primary key,
                      item_name varchar(255) not null,
                      price int not null,
                      stock_number int not null default 0,
                      item_detail varchar(1000) not null,
                      sell_status Enum('SELL', 'SOLD_OUT') not null default 'SELL',
                      created_at date not null default (current_date),
                      category_id BIGINT not null,
                      CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category(category_id)
);


-- 에코마켓 상품 이미지 table (item_img)
create table item_img (
                          item_img_id bigint auto_increment primary key,
                          item_id bigint not null,
                          img_name varchar(255) not null,
                          ori_img_name varchar(255),
                          img_url varchar(500) not null,
                          rep_img_yn char(1) not null,
                          created_at date not null default (current_date),
                          foreign key(item_id) references Item (item_id)
);


-- 장바구니 table (cart)
create table cart (
                      cart_id bigint auto_increment primary key,
                      member_id bigint not null,
                      created_at date not null default (current_date),
                      foreign key(member_id) references member(member_id)
);


-- 장바구니 상품 table (cart_item)
create table cart_item (
                           cart_item_id bigint auto_increment primary key,
                           cart_id bigint not null,
                           item_id bigint not null,
                           count int not null default 1,
                           created_at date not null default (current_date),
                           foreign key(cart_id) references cart(cart_id),
                           foreign key(item_id) references item(item_id)
);

-- 주문 정보 table (order)
create table orders (
                        order_id bigint auto_increment primary key,
                        order_uuid varchar(100) not null unique,
                        member_id bigint not null,
                        order_status enum('ORDER', 'CANCEL') not null default 'ORDER',
                        created_at date not null default (current_date),
                        updated_at date not null default (current_date),
                        name varchar(50) NOT NULL,
                        zipcode varchar(10) NOT NULL,
                        road_address varchar(100) NOT NULL,
                        detail_address varchar(100) NOT NULL,
                        phone_number varchar(13) NOT NULL,
                        total_price int NOT NULL,
                        foreign key(member_id) references member(member_id)
);

ALTER TABLE orders MODIFY COLUMN order_status ENUM('READY', 'ORDER', 'CANCEL') NOT NULL DEFAULT 'READY';


-- 주문 상세 table (order_item)
create table order_item (
                            order_item_id bigint auto_increment primary key,
                            order_id bigint not null,
                            item_id bigint not null,
                            count int not null,
                            order_price int not null,
                            created_at date not null default (current_date),
                            foreign key(order_id) references orders(order_id),
                            foreign key(item_id) references item(item_id)
);


-- 결제 처리 table (payment)
CREATE TABLE payment (
    payment_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    order_id BIGINT NOT NULL,
    order_uuid VARCHAR(100) NOT NULL UNIQUE,
    member_id BIGINT NOT NULL,
    payment_key VARCHAR(255) NOT NULL UNIQUE,
    pay_method ENUM('KAKAOPAY', 'TOSSPAY') NOT NULL DEFAULT 'KAKAOPAY',
    pay_amount INT NOT NULL,
    pay_status ENUM('PAID', 'CANCEL', 'FAIL') NOT NULL DEFAULT 'PAID',
    paid_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (member_id) REFERENCES member(member_id)
);

insert into category (category_name)
value ("가구");

SELECT * FROM item_img;

-- 주문완료 테스트 데이터 입력하기
-- 카테고리
INSERT INTO category (category_name) VALUES ('생활용품');

-- 상품
INSERT INTO item (item_name, price, stock_number, item_detail, sell_status, category_id)
VALUES ('친환경 빨대', 5000, 100, 'PLA 소재의 빨대입니다.', 'SELL', 1);

-- 상품 이미지
INSERT INTO item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
VALUES (1, 'eco_straw.jpg', 'eco_straw_original.jpg', '/ecovery/items/eco_straw.jpg', 'Y');

-- 주문 정보
INSERT INTO orders (
    order_uuid, member_id, order_status, name, zipcode, road_address, detail_address, phone_number, total_price
)
VALUES (
    'ORD-20250804-0001', 1, 'ORDER', '김환경', '04000', '서울 마포구 서교동', '101동 202호', '010-1234-5678', 5000
);

-- 주문 상세
INSERT INTO order_item (order_id, item_id, count, order_price)
VALUES (1, 5, 1, 5000);

-- 결제 정보
INSERT INTO payment (
    order_id, order_uuid, member_id, paymentKey, pay_method, pay_amount, pay_status
)
VALUES (
    1, 'ORD-20250804-0001', 1, 'test-payment-key-0001', '카드', 5000, 'PAID'
);

-- 1. memberId 15로 payment 테이블 수정
UPDATE payment
SET member_id = 15
WHERE order_id = 1;

-- 2. memberId 15로 orders 테이블 수정
UPDATE orders
SET member_id = 15
WHERE order_id = 1;

-- 주문 정보
INSERT INTO orders (
    order_uuid, member_id, order_status, name, zipcode, road_address, detail_address, phone_number, total_price
) VALUES (
    'ORD-20250804-0002', 15, 'ORDER', '김환경', '04000', '서울 마포구 서교동', '101동 202호', '010-1234-5678', 50000
);

-- order_id는 AUTO_INCREMENT로 생성되므로, 아래 쿼리 전에 꼭 마지막 order_id 확인하세요!
-- 예: SELECT MAX(order_id) FROM orders;

-- 주문 상세
INSERT INTO order_item (order_id, item_id, count, order_price)
VALUES (2, 4, 1, 50000);  -- 주문 ID=2, 상품 ID=4

-- 결제 정보
INSERT INTO payment (
    order_id, order_uuid, member_id, paymentKey, pay_method, pay_amount, pay_status
) VALUES (
    2, 'ORD-20250804-0002', 15, 'test-payment-key-0002', '카드', 50000, 'PAID'
);

SELECT * FROM orders;

INSERT INTO orders (
    order_id, member_id, name, phone_number, road_address, detail_address, zipcode, order_uuid, created_at, total_price
) VALUES (
    4, 15, '홍길동', '010-1234-5678', '서울시 강남구', '101호', '06234', UUID(), NOW(), 60000
);

-- 2. 주문상품 등록 (order_item)
INSERT INTO order_item (order_id, item_id, order_price, count)
VALUES 
(4, 4, 50000, 1),
(4, 5, 10000, 2);  -- 5,000 * 2

SELECT order_uuid FROM orders WHERE order_id = 4;

-- 3. 결제 정보 등록 (payment)
INSERT INTO payment (
    order_id, order_uuid, member_id, payment_key, pay_method, pay_amount, pay_status, paid_at
) VALUES (
    4,
    'c79738f8-710f-11f0-8aba-40b076db7256',
    15,
    UUID(),
    'KAKAOPAY',
    60000,
    'PAID',
    NOW()
);

-- 무료나눔 게시글 table
CREATE TABLE free (
    free_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    member_id BIGINT NOT NULL,
    title VARCHAR(200) NOT NULL,
    content VARCHAR(1000) NOT NULL,
    category VARCHAR(20) NOT NULL,
    region_gu VARCHAR(50) NOT NULL,
    region_dong VARCHAR(50) NOT NULL,
    item_condition ENUM('HIGH', 'MEDIUM', 'LOW') NOT NULL DEFAULT 'HIGH',
    deal_status ENUM('ONGOING', 'DONE') NOT NULL DEFAULT 'ONGOING',
    view_count INT NOT NULL DEFAULT 0,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (member_id) REFERENCES member(member_id)
);

-- 무료나눔 게시글 이미지 table
CREATE TABLE free_img (
    free_img_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    free_id BIGINT NOT NULL,
    img_name VARCHAR(255) NOT NULL,
    ori_img_name VARCHAR(255),
    img_url VARCHAR(500) NOT NULL,
    repimg_yn CHAR(1) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_free_img_free FOREIGN KEY (free_id) REFERENCES free(free_id) ON DELETE CASCADE
);

-- 무료나눔 게시글 댓글 table
create table free_reply (
    reply_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    free_id BIGINT NOT NULL,
    member_id BIGINT NOT NULL,
    content VARCHAR(1000) NOT NULL,
    parent_id BIGINT DEFAULT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (free_id) REFERENCES free(free_id),
    FOREIGN KEY (member_id) REFERENCES member(member_id),
    FOREIGN KEY (parent_id) REFERENCES free_reply(reply_id)
);

