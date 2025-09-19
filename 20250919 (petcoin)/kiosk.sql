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