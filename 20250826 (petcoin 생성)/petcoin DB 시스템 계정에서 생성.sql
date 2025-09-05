-- 1) petcoin DB 먼저 생성
CREATE DATABASE petcoin
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_general_ci;

-- 2) 계정 생성 (로컬만 접속 가능)
CREATE USER 'petcoin'@'localhost' IDENTIFIED BY '1234';

-- 3) 해당 DB에만 권한 부여
GRANT ALL PRIVILEGES ON petcoin.* TO 'petcoin'@'localhost';

FLUSH PRIVILEGES;