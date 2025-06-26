use shop;

select * from member;

desc cart;

select * from cart;

desc cart_item;

desc order_item;

-- 상품 확인
select * from item;

-- 상품이미지 확인
select * from item_img;

-- 주문 확인
select * from orders;

-- 주문 상품 확인
select * from order_item;


select item_img_id
from item_img i
join item t on i.item_id = t.item_id
where t.item_nm like "%자바%";

select i.*
from item_img i
join item t on i.item_id = t.item_id
where t.item_nm like "%자바%";