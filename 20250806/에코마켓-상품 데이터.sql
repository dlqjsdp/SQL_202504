-- 카테고리 데이터 추가
insert into category (category_name) value ("덴탈");
insert into category (category_name) value ("욕실");
insert into category (category_name) value ("주방");
insert into category (category_name) value ("키링");

-- 상품 데이터 추가
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (1, '리바이브 칫솔', 10000, 100, '평균 사용 기간 2개월인 매일 쓰는 칫솔을 제품의 생산 과정부터 쓰임이 다한 뒤까지 생각한 소재로 만들었습니다. 
지구에 진심인 일상에서 작은 변화를 만들어보세요.

* 한 세트에 색상별로 1개씩 구성되어있습니다.
* 색상별로 1개씩 사용해보고 싶으신 분들에게 추천합니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (1, '고체치약 40정입', 5900, 100, 'JIGU의 지구를 위한 진심,
플라스틱 없는 양치 시간
어디서나 위생적인 사용이 가능해요.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (1, '대나무칫솔 (12개입)', 19200, 100, '플라스틱을 대체하는 자연에 더 가까운 대나무 칫솔로 제로웨이스트를 실천해 보세요.
위생을 위해 개별 포장되어 두고두고 쓰기 편한 대나무 칫솔 12개입입니다.

- 규격 : 길이 17.5cm * 폭 1.4cm', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (1, '고체치약 150정입', 13400, 100, '지구를 위한 진심
플라스틱 없는 양치 시간을 만들어보세요.
어디서나 위생적인 사용이 가능해요.
매일 써도 넉넉한 용량으로 집이나 사무실에서 두고 사용하기 좋습니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (1, '둥근 대나무칫솔 (10개입)', 21900, 100, '둥근 그립감으로 
사용감이 좋은 대나무 칫솔입니다
* 한 세트 10개 구성입니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (1, '고체치약 450정입', 35900, 100, '플라스틱 없는 양치 용품으로 제로웨이스트를 시작해 보세요.
대용량으로 실속있게, 집이나 사무실에 두고 사용하기 좋습니다.
깔끔하게 보관되어 여분은 지구 박스에 쏙 넣어 보관해 보세요.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (1, '쿨앤프레시 미니치약 리필형 5개', 10000, 100, '구성 : 쿨앤프레시 미니치약 30g * 5개

쿨앤프레시 치약을 미니로 먼저 만나보세요.
레스 양치 키트의 미니 치약을 다 사용하신 후 교체하시거나
휴대하기 좋은 사이즈로 여행용으로 추천드립니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (1, '제로 양치 키트 (제로웨이스트 양치세트)', 6000, 100, '구성 :  대나무칫솔 1개, 실리콘 칫솔 뚜껑 1개, 고체치약 10정 

지속 가능한 소재로 만든 제품과
낭비 없는 포장을 덜어내어
더 가볍게 제로웨이스트를 전해보세요.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (1, '레스 양치 키트 (휴대용 양치세트)', 7500, 100, '구성 : 리바이브 칫솔 1개(리피그린or듀이화이트), 쿨앤프레시치약(30g), PCR-칫솔캡,  PCR-칫솔케이스

휴대용도 레스웨이스트! 
간단한 양치 키트도 환경을 생각하는 소재로 구성했습니다. 
플라스틱을 줄이는 한 걸음을 간편하게,
레스웨이스트를 시작해 보세요.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (1, '쿨앤프레시 치약 4개입', 15600, 100, '지구를 위한 용기와 건강한 거품으로 구강 관리를 시작하세요.
욕실에서 깔끔하게 보관하기 좋은 패키지로
두고두고 쓰기 좋아 실용적인 선물로도 추천합니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (1, '리바이브 칫솔 12개입', 23900, 100, '지구를 담은 4가지 컬러로
온 가족이 다 함께 사용하며 바꿔보는 욕실 분위기.
깔끔한 보관까지 가능합니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (1, '쿨앤프레시 치약', 6500, 100, '재활용 플라스틱 40%을 사용한 단일 소재 튜브 용기입니다.
지구를 위한 용기와 건강한 거품으로
구강 관리를 시작해 보세요.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (2, '노플라스틱선데이 튜브짜개', 4000, 100, '튜브 형태의 핸드크림, 립밤 등 다양한 곳에 사용할 수 있는 재사용플라스틱 튜브짜개 입니다.
 
* 버려지는 플라스틱을 업사이클해 만들어지는 제품 특성상
모든 상품의 모양과 색이 동일하지 않습니다. 
* 화면으로 보시는 이미지와 동일한 상품이 배송 되지 않습니다.
* 쿨앤프레시 치약 튜브 사이즈와 호환되지 않습니다. ', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (2, '안티 헤어 로스 샴푸바', 9900, 100, '자극 없이 깨끗한 두피 클렌징과 식물 유래 오일이 만들어내는 풍성한 거품으로 
상쾌하면서도 부드러운 모발로 마무리됩니다.
로즈마리의 산뜻한 허브향으로 건강한 두피와 모발을 가꿔보세요.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (2, '예고은 삼베 샤워타월', 11900, 100, '아크릴 샤워타월을 대체하는 삼베 소재의 샤워 타월입니다. 
자연에서 와서 자연으로 돌아가는 샤워타월로 욕실 제로웨이스트를 실천해 보세요.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (2, '유기농 수건 (3매입)', 26100, 100, '유기농 수건 3매입 구성입니다.
씨앗부터 재배까지 농약이나 화학비료를 사용하지 않고 
사용된 이후에도 엄격한 규제를 통해 만들어진 목화입니다.

*사용 횟수나 세탁 방법에 따라 6개월~1년마다 교체를 권장드립니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (2, '유기농 핸드타올 (3매입)', 16500, 100, '유기농 핸드타올 3매입 구성입니다.
씨앗부터 재배까지 농약이나 화학비료를 사용하지 않고
사용된 이후에도 엄격한 규제를 통해 만들어진 목화입니다.

*사용 횟수나 세탁 방법에 따라 6개월~1년마다 교체를 권장드립니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (2, '실리콘비누받침', 5000, 100, '고체비누를 무르지 않게 보관할 수 있고
말랑말랑해서 세척하기에도 용이합니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (2, '노플라스틱선데이 칫솔꽂이', 5000, 100, '재사용플라스틱으로 만들어진 칫솔꽂이 입니다.

* 버려지는 플라스틱을 업사이클해 만들어지는 제품 특성상
모든 상품의 모양과 색이 동일하지 않습니다.
* 화면으로 보시는 이미지와 동일한 상품이 배송되지 않습니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (2, '제로 바디 세트', 28900, 100, '구성 :  올인원 온몸비누 1개, 유기농 수건 1개, 삼베 샤워타월 1개

매일 씻고 닦아내는 만큼 
피부 자극 없는 유기농 수건과 
머리부터 발끝까지 사용하는 만큼 
자연의 청정함을 담은 올인원 비누가 구성된 바디 세트입니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (2, '제로 헤어 세트', 22900, 100, '구성 :  안티헤어로스샴푸바 1개, 유기농 수건 1개, 유기농 면 비누망 1개 

로즈마리향이 은은하게 퍼지는 고체 샴푸바와
부드러운 유기농 수건이 함께 구성된 
제로웨이스트 헤어 선물 세트입니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (2, '올인원 온몸비누', 9900, 100, '활기를 불어넣는 자몽의 상큼함으로
머리부터 발끝까지 하나로 하루를 시작하세요.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (3, '휴대용 접이식 실리콘 런치박스', 7900, 100, '접었다 폈다가 가능한 실리콘 밀폐용기입니다.
수납하기도 좋아 컴팩트한 보관으로 
여행, 캠핑, 도시락 등 다양하게 사용해 보세요. 

휴대 시 부피를 줄여 가지고 다니기 좋아 
어디서나 제로웨이스트 실천을 도전해 보세요.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (3, '예고은 삼베 수세미 3개입', 8500, 100, '가벼운 설거지는 세제 없이도 말끔하게 가능한 삼베 소재의 수세미입니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (3, '나무 커트러리 세트', 11900, 100, '* 구성품
- 나무 티스푼 S사이즈 2개
- 나무 티포크 2개
- 나무 버터나이프 L사이즈 1개
- 체크 빨대파우치 1개 (그린, 레드, 베이지 랜덤)', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (3, '스테인레스 빨대 세트', 6500, 100, '일상에서도 제로웨이스트를 실천할 수 있는
스테인레스 빨대 2종과 세척솔을 함께 담았습니다.
카페나, 피크닉에서도 가볍게 사용해보세요 :-)

*구성 
스테인레스 직선 빨대 1개
스테인레스 곡선 빨대 1개
사이잘 세척솔 1개', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (3, '컬러 나무 수저세트 L', 6500, 100, '나무수저 손잡이에 산뜻한 색감을 입힌 컬러 나무 수저세트

나무 수저세트 L : 수저길이 : 23.5cm / 숟가락 너비 : 4.5cm
* 핸드메이드 제품으로 제품 길이가 약간 상이할 수 있습니다. (± 5mm)

남성, 입/손이 크신 분, 큰 수저 좋아하시는 분들께 추천.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (3, '천연 고무장갑 5개입 (국산)', 13900, 100, '100% 천연 고무로 국내에서 만들어진 고무장갑입니다.
사용이 다한 후 분해되어 다시 흙으로 돌아가
환경호르몬 걱정 없이 안심하고 사용하세요. 

*구성 : 그린 3개 + 다크그레이 2개', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (3, '천연 수세미 3개입', 11900, 100, '플라스틱으로부터 우리도 지구도 지키는 자연이 준 선물,
천연 수세미로 주방에서도 가볍게
제로웨이스트를 시작하세요.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (3, '보틀 세척솔', 13000, 100, '텀블러 등과 같은 긴 용기를 세척하기에 용이한 세척솔입니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (3, '키친클로스 양면 테이블 매트', 9000, 100, '느낌이 다른 앞뒤면으로 양면 활용이 가능한 정사각형의 테이블매트 ', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (3, '키친클로스 테이블매트 (스티치)', 8000, 100, '담백하고 진한 색감의 스티치 테이블매트', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (3, '실리콘 지퍼백', 12000, 100, '국내 생산 실리콘 소재로 만들어져 안심하고 사용할 수 있는 다회용 실리콘 지퍼백 입니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (4, '업사이클 네잎클로버 키링', 8000, 100, '행운을 가져다 주는 네잎 클로버를 선물해 보세요.

7g의 폐플라스틱을 재활용하여 만들어진 럭키 키링에
단 하나뿐인 마블링이 더해진 나만의 키링입니다.

*버려지는 플라스틱을 업사이클해 만들어지는 제품 특성상
모든 상품의 모양과 색이 동일하지 않습니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (4, '업사이클 스위밍 키링', 18900, 100, '수영하는 분들을 설레게 하는 스위밍 키링과 함께 오늘 수영도 완료!

11g의 폐플라스틱을 재활용하여 만들어진 수영 키링에
각기 다른 마블링이 더해져 나만의 킥판이 돋보인답니다.

*버려지는 플라스틱을 업사이클해 만들어지는 제품 특성상
모든 상품의 모양과 색이 동일하지 않습니다.', 'SELL');
insert into item (category_id, item_name, price, stock_number, item_detail, sell_status)
value (4, '나무를 심는 업사이클 숲 키링', 8000, 100, '버려지는 플라스틱을 업사이클해 만들어져
모양도 색도 다른 나만의 키링입니다.

*나무 모양, 꽃의 모양과 색상, 키링줄의 색상은 랜덤 발송됩니다.
* 화면으로 보시는 이미지와 동일한 상품이 배송되지 않습니다.', 'SELL');

-- 상품 이미지
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (1, 'item1_img1.jpg', 'product1_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/36b11658f55d6.jpg
', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (1, 'item1_img2.jpg', 'product1_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240813/805b749eba66e.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (1, 'item1_img3.jpg', 'product1_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240418/f8658d66370f1.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (1, 'item1_img4.jpg', 'product1_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240418/2a013985521ac.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (2, 'item2_img1.jpg', 'product2_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/aef9b37a99092.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (2, 'item2_img2.jpg', 'product2_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240418/a56bbb7b74e84.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (2, 'item2_img3.jpg', 'product2_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240418/300611a95876a.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (3, 'item3_img1.jpg', 'product3_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240814/4969dcbedd9d1.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (3, 'item3_img2.jpg', 'product3_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240814/aa20629ea33aa.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (3, 'item3_img3.jpg', 'product3_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240814/4f0cf572d2327.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (4, 'item4_img1.jpg', 'product4_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240814/ac89bbc4e9bea.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (4, 'item4_img2.jpg', 'product4_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240807/17c21351cd29b.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (4, 'item4_img3.jpg', 'product4_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240418/81a3f1adb7d96.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (5, 'item5_img1.jpg', 'product5_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/f48cbf5b0050b.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (5, 'item5_img2.jpg', 'product5_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240813/7dab7ca4a7a9d.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (5, 'item5_img3.jpg', 'product5_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240813/671c972bfe53d.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (6, 'item6_img1.jpg', 'product6_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240814/bd84ed1062651.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (6, 'item6_img2.jpg', 'product6_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240814/fc88f70135851.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (6, 'item6_img3.jpg', 'product6_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240418/a45fa7c8e21ec.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (7, 'item7_img1.jpg', 'product7_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240814/c5335a7390985.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (7, 'item7_img2.jpg', 'product7_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240731/b605f86448ba4.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (7, 'item7_img3.jpg', 'product7_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240731/0cbf25192d001.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (8, 'item8_img1.jpg', 'product8_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/237a3c63dcbd4.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (8, 'item8_img2.jpg', 'product8_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240813/d043ca10e8ef5.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (8, 'item8_img3.jpg', 'product8_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240813/3d56fb1810dd5.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (9, 'item9_img1.jpg', 'product9_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/e80ac4adfa0a7.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (9, 'item9_img2.jpg', 'product9_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240813/2946b508941a0.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (9, 'item9_img3.jpg', 'product9_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240418/d9f9fc385041b.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (10, 'item10_img1.jpg', 'product10_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240814/6222ecd28ca13.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (10, 'item10_img2.jpg', 'product10_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240418/6dec0d53a3cf6.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (10, 'item10_img3.jpg', 'product10_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240418/120ffa0021900.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (11, 'item11_img1.jpg', 'product11_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240816/02389d53052a9.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (11, 'item11_img2.jpg', 'product11_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240418/bc818057d4bc7.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (11, 'item11_img3.jpg', 'product11_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240418/805cc863a69ef.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (11, 'item11_img4.jpg', 'product11_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240418/6d9d9125111df.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (12, 'item12_img1.jpg', 'product12_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/ab137a960150a.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (12, 'item12_img2.jpg', 'product12_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240418/06b9e67c2fd06.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (12, 'item12_img3.jpg', 'product12_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240418/19c17ca652275.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (12, 'item12_img4.jpg', 'product12_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240418/d4d4e51f5ca5f.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (13, 'item13_img1.jpg', 'product13_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/4c089bd775143.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (13, 'item13_img2.jpg', 'product13_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240705/cb4dbe8c3ea0a.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (14, 'item14_img1.jpg', 'product14_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240814/f9886373d1165.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (14, 'item14_img2.jpg', 'product14_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240814/363c28fa87436.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (14, 'item14_img3.jpg', 'product14_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240531/0624a1cb3ca7e.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (14, 'item14_img4.jpg', 'product14_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240814/16d11051c2cb9.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (15, 'item15_img1.jpg', 'product15_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/4bb9ca08e0f0d.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (15, 'item15_img2.jpg', 'product15_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240813/896aec61a11ae.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (15, 'item15_img3.jpg', 'product15_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240813/386ee3658654a.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (15, 'item15_img4.jpg', 'product15_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240418/4c00eb1206f61.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (16, 'item16_img1.jpg', 'product16_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/6317b868498bc.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (16, 'item16_img2.jpg', 'product16_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240813/9f214d65dd677.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (16, 'item16_img3.jpg', 'product16_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240813/9a48d552b30a0.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (16, 'item16_img4.jpg', 'product16_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240813/92156a28af622.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (16, 'item16_img5.jpg', 'product16_img5.jpg', 'https://cdn.imweb.me/thumbnail/20240513/c50909dbb9c16.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (17, 'item17_img1.jpg', 'product17_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/ba97dac301969.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (17, 'item17_img2.jpg', 'product17_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240813/c47f5f61ce0a3.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (17, 'item17_img3.jpg', 'product17_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240813/2bbc276970a93.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (17, 'item17_img4.jpg', 'product17_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240417/d3de181b6238a.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (17, 'item17_img5.jpg', 'product17_img5.jpg', 'https://cdn.imweb.me/thumbnail/20240417/01fb351ed33c2.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (18, 'item18_img1.jpg', 'product18_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240417/2f98623d292d3.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (18, 'item18_img2.jpg', 'product18_img2.jpg', 'https://cdn.imweb.me/thumbnail/20241108/7a2669b335b67.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (18, 'item18_img3.jpg', 'product18_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240417/91b3215b31cc4.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (18, 'item18_img4.jpg', 'product18_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240813/7673f7cd28683.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (18, 'item18_img5.jpg', 'product18_img5.jpg', 'https://cdn.imweb.me/thumbnail/20240813/728ef2a92a474.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (19, 'item19_img1.jpg', 'product19_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240814/f6b5d246322b4.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (19, 'item19_img2.jpg', 'product19_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240705/657d0b9e15afb.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (20, 'item20_img1.jpg', 'product20_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/a73d308e7a58b.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (20, 'item20_img2.jpg', 'product20_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240809/4c2706fe57a71.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (20, 'item20_img3.jpg', 'product20_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240813/a70fd615b5067.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (20, 'item20_img4.jpg', 'product20_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240813/bcd5f2a732e0e.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (21, 'item21_img1.jpg', 'product21_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/bcd5f2a732e0e.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (21, 'item21_img2.jpg', 'product21_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240813/e5f95857b0cb7.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (21, 'item21_img3.jpg', 'product21_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240813/8f1380232102a.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (21, 'item21_img4.jpg', 'product21_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240813/cc2c7e8df6fb2.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (22, 'item22_img1.jpg', 'product22_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/e644a450748bf.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (22, 'item22_img2.jpg', 'product22_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240813/24813a42648a2.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (22, 'item22_img3.jpg', 'product22_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240531/be687698beec3.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (22, 'item22_img4.jpg', 'product22_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240531/50b6f68bec061.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (23, 'item23_img1.jpg', 'product23_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240821/8e17033f982f5.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (23, 'item23_img2.jpg', 'product23_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240821/71e70550b5834.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (23, 'item23_img3.jpg', 'product23_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240821/ba7fc0e3fb841.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (24, 'item24_img1.jpg', 'product24_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/f6e417ffadf58.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (24, 'item24_img2.jpg', 'product24_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240813/9f0741bf364a1.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (24, 'item24_img3.jpg', 'product24_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240813/8e23632594ff2.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (25, 'item25_img1.jpg', 'product25_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240426/41fe4b990785d.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (25, 'item25_img2.jpg', 'product25_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240426/e006c4d708245.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (25, 'item25_img3.jpg', 'product25_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240426/efc64f431de9c.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (25, 'item25_img4.jpg', 'product25_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240422/d933471c29b5f.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (26, 'item26_img1.jpg', 'product26_img1.jpg', 'https://cdn.imweb.me/thumbnail/20250319/9cba2be8b0700.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (26, 'item26_img2.jpg', 'product26_img2.jpg', 'https://cdn.imweb.me/thumbnail/20250319/4d4cc96d1f5fd.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (27, 'item27_img1.jpg', 'product27_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240424/5564d38699351.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (27, 'item27_img2.jpg', 'product27_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240424/43f65a4f35d9e.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (27, 'item27_img3.jpg', 'product27_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240422/478300676e7e1.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (28, 'item28_img1.jpg', 'product28_img1.jpg', 'https://cdn.imweb.me/thumbnail/20250122/78c51669802de.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (28, 'item28_img2.jpg', 'product28_img2.jpg', 'https://cdn.imweb.me/thumbnail/20250122/38165bb3d60b5.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (28, 'item28_img3.jpg', 'product28_img3.jpg', 'https://cdn.imweb.me/thumbnail/20250122/f702d16655fe0.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (28, 'item28_img4.jpg', 'product28_img4.jpg', 'https://cdn.imweb.me/thumbnail/20250122/a1aedd5e9f831.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (28, 'item28_img5.jpg', 'product28_img5.jpg', 'https://cdn.imweb.me/thumbnail/20250122/300122cc2035f.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (29, 'item29_img1.jpg', 'product29_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240813/994426324b9df.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (29, 'item29_img2.jpg', 'product29_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240531/fe73c31b1f1d6.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (29, 'item29_img3.jpg', 'product29_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240531/7249e95e9f537.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (29, 'item29_img4.jpg', 'product29_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240813/f7b48d4e61d99.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (30, 'item30_img1.jpg', 'product30_img1.jpg', 'https://cdn.imweb.me/thumbnail/20241214/66e7d3ecaa26b.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (30, 'item30_img2.jpg', 'product30_img2.jpg', 'https://cdn.imweb.me/thumbnail/20241214/f8bd6652a3477.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (30, 'item30_img3.jpg', 'product30_img3.jpg', 'https://cdn.imweb.me/thumbnail/20241214/a0cc65efe417c.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (31, 'item31_img1.jpg', 'product31_img1.jpg', 'https://cdn.imweb.me/thumbnail/20250621/f77729d312371.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (31, 'item31_img2.jpg', 'product31_img2.jpg', 'https://cdn.imweb.me/thumbnail/20250621/9a730fc0f8b55.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (31, 'item31_img3.jpg', 'product31_img3.jpg', 'https://cdn.imweb.me/thumbnail/20250621/45e4060e09acd.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (32, 'item32_img1.jpg', 'product32_img1.jpg', 'https://cdn.imweb.me/thumbnail/20250620/a9f2796eb75c6.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (32, 'item32_img2.jpg', 'product32_img2.jpg', 'https://cdn.imweb.me/thumbnail/20250620/92075aae47f94.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (32, 'item32_img3.jpg', 'product32_img3.jpg', 'https://cdn.imweb.me/thumbnail/20250620/41cba9b729ee1.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (32, 'item32_img4.jpg', 'product32_img4.jpg', 'https://cdn.imweb.me/thumbnail/20250620/84d574f9caf50.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (32, 'item32_img5.jpg', 'product32_img5.jpg', 'https://cdn.imweb.me/thumbnail/20250620/d4ef7d703707f.jpg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (33, 'item33_img1.jpg', 'product33_img1.jpg', 'https://cdn.imweb.me/thumbnail/20241016/4ccc97da5ba35.jpeg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (33, 'item33_img2.jpg', 'product33_img2.jpg', 'https://cdn.imweb.me/thumbnail/20241016/236ff5719847b.jpeg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (33, 'item33_img3.jpg', 'product33_img3.jpg', 'https://cdn.imweb.me/thumbnail/20241016/ab064fc78dd7a.jpeg', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (34, 'item34_img1.jpg', 'product34_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240719/209923e8ae485.png', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (34, 'item34_img2.jpg', 'product34_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240719/fca7474635d44.png', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (34, 'item34_img3.jpg', 'product34_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240719/75fbf9480b2bd.png', 'N');

insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (35, 'item35_img1.jpg', 'product35_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240722/9c4c9badf3ded.jpg', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (35, 'item35_img2.jpg', 'product35_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240722/0c86552544004.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (35, 'item35_img3.jpg', 'product35_img3.jpg', 'https://cdn.imweb.me/thumbnail/20240722/47f43231dbdab.jpg', 'N');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (35, 'item35_img4.jpg', 'product35_img4.jpg', 'https://cdn.imweb.me/thumbnail/20240722/b03adda360c6b.jpg', 'N');


insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (36, 'item36_img1.jpg', 'product36_img1.jpg', 'https://cdn.imweb.me/thumbnail/20240719/d792b67c7e9e1.png', 'Y');
insert into item_img (item_id, img_name, ori_img_name, img_url, rep_img_yn)
value (36, 'item36_img2.jpg', 'product36_img2.jpg', 'https://cdn.imweb.me/thumbnail/20240719/0493588e2c0fa.png', 'N');
