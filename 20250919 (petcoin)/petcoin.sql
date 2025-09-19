-- 프로젝트 DB (petcoin) 선택
use petcoin;

-- 회원 가입 테이블
create table member (
	member_id BIGINT AUTO_INCREMENT PRIMARY KEY, -- 회원 고유변호(기본키)
    phone VARCHAR(13) NOT NULL UNIQUE, -- 연락처(중복불가)
    role ENUM('USER','ADMIN') NOT NULL DEFAULT 'USER', -- 권한
    password VARCHAR(255) NOT NULL -- 비밀번호
);

ALTER TABLE member
ADD COLUMN password VARCHAR(255) NOT NULL AFTER role;

ALTER TABLE member ADD COLUMN created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;   -- 가입일

-- 안내사항 테이블
create table notice (
	notice_id BIGINT AUTO_INCREMENT PRIMARY KEY, -- 게시글 고유변호(기본키)
    member_id BIGINT NOT NULL, -- 작성자 ID(외래키)
    title VARCHAR(255) NOT NULL, -- 게시글 제목
    content VARCHAR(5000) NOT NULL, -- 게시글 내용
    view_count INT NOT NULL DEFAULT 0, -- 조회수(초기값 0)
    created_at DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP), -- 게시글 등록일
    updated_at DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP), -- 게시글 수정일
    FOREIGN KEY (member_id) REFERENCES member(member_id)
);

-- 페트병 무인회수기 위치 테이블
create table pet_recycle (
    recycle_id BIGINT AUTO_INCREMENT PRIMARY KEY, -- 회수기 고유번호(기본키)
    recycle_name VARCHAR(200) NOT NULL, -- 회수기 위치 명칭
    address VARCHAR(255) NOT NULL, -- 설치 주소
    latitude DECIMAL(10,7) NOT NULL, -- 위도
    longitude DECIMAL(10,7) NOT NULL, -- 경도
    recycle_tel VARCHAR(13), -- 설치된 장소 연락처
    sido VARCHAR(20), -- 시
    sigungu VARCHAR(30), -- 구
    dong VARCHAR(40) -- 동
);

-- 포인트 내역 테이블
create table point_history (
	history_id BIGINT AUTO_INCREMENT PRIMARY KEY,		-- 포인트 내역 고유번호(PK)
    member_id BIGINT NOT NULL,			-- 회원 고유번호(FK)
    point_change INT NOT NULL DEFAULT 0,		-- 포인트 변화량
    point_balance INT NOT NULL DEFAULT 0, 		-- 포인트 잔액
    action_type ENUM('EARN', 'USE', 'ADJUST') NOT NULL, 		-- 거래 유형
    description VARCHAR(255) DEFAULT NULL, 		-- 거래 상세 설명
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,		-- 거래 일자
    FOREIGN KEY (member_id) REFERENCES member(member_id) ON DELETE CASCADE
);

-- 포인트 환급 요청 테이블
create table point_request (
	request_id BIGINT AUTO_INCREMENT PRIMARY KEY,		-- 포인트 환급 요청 고유번호(PK)
    member_id BIGINT NOT NULL,		-- 회원 고유번호(FK)
    request_amount INT NOT NULL,		-- 환급 요청 금액
    bank_name VARCHAR(50) NOT NULL,		-- 은행명
    account_number VARCHAR(50) NOT NULL,		-- 계좌번호
    account_holder VARCHAR(50) NOT NULL,		-- 예금주명
    request_status ENUM('PENDING', 'APPROVED', 'COMPLETED', 'REJECTED') NOT NULL DEFAULT 'PENDING',			-- 진행 상태
    request_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,		-- 요청 시각
    processed_at DATETIME DEFAULT NULL,		-- 요청 처리 완료 시각
    note VARCHAR(255) DEFAULT NULL,		-- 요청 처리 사유
    FOREIGN KEY (member_id) REFERENCES member(member_id) ON DELETE RESTRICT
);

-- 1. 기존 테이블 삭제 (순서 중요!)
DROP TABLE IF EXISTS kiosk_run;
DROP TABLE IF EXISTS kiosk;

-- 1) 키오스크 장치 정보(kiosk)
CREATE TABLE kiosk (
  kiosk_id BIGINT AUTO_INCREMENT PRIMARY KEY,
  recycle_id BIGINT NOT NULL,
  name VARCHAR(100)  NOT NULL, -- 이름(별칭)
  location VARCHAR(255)  NOT NULL, -- 설치 위치
  lat DECIMAL(10,7) NULL,      -- 위도
  lng DECIMAL(10,7) NULL,      -- 경도
  status ENUM('ONLINE','OFFLINE','MAINT') NOT NULL DEFAULT 'ONLINE',   -- 상태
  sw_version VARCHAR(50) NULL,   -- SW 버전
  created_at DATETIME NULL DEFAULT CURRENT_TIMESTAMP,   -- 등록일
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,     -- 수정일
  is_deleted TINYINT(1) NOT NULL DEFAULT 0,      -- 삭제 여부
  FOREIGN KEY (recycle_id) REFERENCES pet_recycle(recycle_id)
);

ALTER TABLE kiosk
MODIFY COLUMN status ENUM('ONLINE','OFFLINE','MAINT') NOT NULL DEFAULT 'ONLINE';


SHOW COLUMNS FROM kiosk LIKE 'status';

-- 2) 키오스크 가동 이력(kiosk_run)
CREATE TABLE IF NOT EXISTS kiosk_run (
  run_id BIGINT AUTO_INCREMENT PRIMARY KEY, -- 세션 PK
  kiosk_id BIGINT NOT NULL, -- FK
  member_id BIGINT NULL, -- FK
  status ENUM('RUNNING','COMPLETED','CANCELLED') NOT NULL DEFAULT 'RUNNING',
  started_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  ended_at DATETIME NULL,
  FOREIGN KEY (kiosk_id) REFERENCES kiosk(kiosk_id),
  FOREIGN KEY (member_id) REFERENCES member(member_id)
);

-- 정상 회수 페트병 개수 컬럼 추가
alter table kiosk_run add column total_pet int;

CREATE INDEX idx_kiosk_run_kiosk_id ON kiosk_run(kiosk_id);

-- RUNNING 여부 체크/범위잠금 정확도 ↑
CREATE INDEX idx_kiosk_run_kiosk_status ON kiosk_run (kiosk_id, status);

-- 목록 조회에서 최근순 정렬도 자주 쓰면 같이(선택)
CREATE INDEX idx_kiosk_run_kiosk_status_started ON kiosk_run (kiosk_id, status, started_at DESC);

-- 불량 사유 및 안내 메시지(pet_rejection)
create table pet_rejection (
pet_rejection_id bigint primary key,
pet_rejection_reason varchar(1000) not null,
pet_rejection_info varchar(1000) not null
);

-- 페트병 회수 기록 내역(pet_collection_log)
create table pet_collection_log (
pet_collection_id BIGINT AUTO_INCREMENT PRIMARY KEY,
run_id bigint not null,
member_id bigint not null,
pet_rejection_id bigint not null,
ai_confidence double not null,
created_at datetime default CURRENT_TIMESTAMP not null,
is_collected boolean not null,
img_path varchar(1000),
FOREIGN KEY (run_id) REFERENCES kiosk_run(run_id),
FOREIGN KEY (pet_rejection_id) REFERENCES pet_rejection(pet_rejection_id),
FOREIGN KEY (member_id) REFERENCES member(member_id)
);

-- 현재 정의 확인
SHOW CREATE TABLE pet_collection_log;

alter table pet_collection_log modify column member_id Bigint;

alter table pet_collection_log modify column pet_rejection_id Bigint;

select * from member;
select * from kiosk;
select * from kiosk_run;
select * from point_history;

select * from pet_rejection;
select * from pet_collection_log;
select * from pet_recycle;

UPDATE kiosk_run
SET status='CANCELLED', ended_at=NOW()
WHERE kiosk_id=1 AND status='RUNNING';

UPDATE kiosk
set status='MAINT', updated_at=NOW()
where kiosk_id=2 and status='ONLINE';

UPDATE kiosk
set status='MAINT', updated_at=NOW()
where kiosk_id=3 and status='ONLINE';

UPDATE kiosk_run
SET status = 'CANCELLED',
    ended_at = NOW()
WHERE run_id = 3;

update member
set role = 'admin'
where phone = '01011111111';


INSERT INTO member (phone, role)
VALUES
('010-1111-2222', 'USER'),
('010-2222-3333', 'ADMIN');

INSERT INTO pet_recycle (
  recycle_name,
  address,
  latitude,
  longitude,
  recycle_tel,
  sido,
  sigungu,
  dong
) VALUES (
  '홍대입구 무인회수기',
  '서울시 마포구 양화로 160',
  37.5571923,
  126.9236547,
  '02-1234-5678',
  '서울특별시',
  '마포구',
  '서교동'
);

INSERT INTO kiosk (
  recycle_id,
  name,
  location,
  lat,
  lng,
  status,
  sw_version,
  created_at,
  updated_at,
  is_deleted
) VALUES (
  1,                                    -- pet_recycle에서 생성된 recycle_id
  '홍대입구 키오스크',
  '서울시 마포구 홍대입구역 1번 출구',
  37.5566789,
  126.9234567,
  'ONLINE',
  'v1.0.0',
  NOW(),
  NOW(),
  0
);

INSERT INTO point_history (
    member_id,
    point_change,
    point_balance,
    action_type,
    description,
    created_at
) VALUES (
    1,                  -- member_id (존재하는 회원 ID로 가정)
    100,               -- 포인트 적립
    500,               -- 총 포인트 잔액
    'EARN',            -- 거래 유형: EARN(적립)
    '페트병 5개 투입으로 포인트 적립',  -- 상세 설명
    NOW()              -- 현재 시각
);


INSERT INTO kiosk (name, location, lat, lng, status, sw_version, created_at, updated_at, is_deleted)
VALUES
('Kiosk A', '서울 강남구 테헤란로 123', 37.4979, 127.0276, 'ONLINE', 'v1.0', NOW(), NOW(), 0),
('Kiosk B', '서울 마포구 홍익로 45', 37.5512, 126.9245, 'OFFLINE', 'v1.2', NOW(), NOW(), 0);


INSERT INTO pet_rejection (pet_rejection_id, pet_rejection_reason, pet_rejection_info)
VALUES (
    1,                  -- pet_rejection_id
    "이물질",               -- pet_rejection_reason
    '라벨 또는 이물질을 제거해주세요.'           -- pet_rejection_info
);

INSERT INTO pet_rejection (pet_rejection_id, pet_rejection_reason, pet_rejection_info)
VALUES (
    2,                  -- pet_rejection_id
    "판별불가",               -- pet_rejection_reason
    '페트병을 다시 투입해주세요.'           -- pet_rejection_info
);


INSERT INTO pet_recycle (
  recycle_name,
  address,
  latitude,
  longitude,
  recycle_tel,
  sido,
  sigungu,
  dong
) VALUES
(
  '강남역 무인회수기',
  '서울시 강남구 강남대로 396',
  37.498095,
  127.027610,
  '02-567-8901',
  '서울특별시',
  '강남구',
  '역삼동'
),
(
  '신촌역 무인회수기',
  '서울시 서대문구 신촌로 73',
  37.556003,
  126.936768,
  '02-345-6789',
  '서울특별시',
  '서대문구',
  '창천동'
);


INSERT INTO kiosk (
  recycle_id,
  name,
  location,
  lat,
  lng,
  status,
  sw_version,
  created_at,
  updated_at,
  is_deleted
) VALUES
(
  2,  -- 강남역 무인회수기
  '강남역 키오스크',
  '서울시 강남구 강남역 11번 출구',
  37.498095,
  127.027610,
  'ONLINE',
  'v1.0.0',
  NOW(),
  NOW(),
  0
),
(
  3,  -- 신촌역 무인회수기
  '신촌역 키오스크',
  '서울시 서대문구 신촌역 2번 출구',
  37.556003,
  126.936768,
  'ONLINE',
  'v1.0.0',
  NOW(),
  NOW(),
  0
);


INSERT INTO kiosk_run (kiosk_id, member_id, status, started_at, ended_at, total_pet) VALUES
(1, NULL, 'COMPLETED', NOW() - INTERVAL 35 MINUTE, NOW() - INTERVAL 34 MINUTE, 7),
(1, NULL, 'COMPLETED', NOW() - INTERVAL 20 MINUTE, NOW() - INTERVAL 19 MINUTE, 9),
(1, NULL, 'COMPLETED', NOW() - INTERVAL 10 MINUTE, NOW() - INTERVAL  9 MINUTE, 10);

-- 초 단위 평균
SELECT AVG(TIMESTAMPDIFF(SECOND, started_at, ended_at)) AS avg_seconds
FROM kiosk_run
WHERE status = 'COMPLETED' AND ended_at IS NOT NULL;

-- 분 단위 평균(소수 1자리)
SELECT ROUND(AVG(TIMESTAMPDIFF(SECOND, started_at, ended_at)) / 60, 1) AS avg_minutes
FROM kiosk_run
WHERE status = 'COMPLETED' AND ended_at IS NOT NULL;

SELECT TIMESTAMPDIFF(SECOND, started_at, ended_at) AS duration_sec
FROM kiosk_run
WHERE status = 'COMPLETED' AND ended_at IS NOT NULL
ORDER BY duration_sec DESC
LIMIT 20;