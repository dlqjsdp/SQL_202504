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

-- 장바구니 테이블 조회
select * from cart;

-- 장바구니 상품 테이블 조회
select * from cart_item;


select item_img_id
from item_img i
join item t on i.item_id = t.item_id
where t.item_nm like "%자바%";

select i.*
from item_img i
join item t on i.item_id = t.item_id
where t.item_nm like "%자바%";

select * 
from orders;

select * 
from order_item;

select o.*
from orders o
join member m
on o.member_id = m.member_id
where m.email = "test@test.com";

select o.*
from orders o
join member m
on o.member_id = m.member_id
where m.email = "test@test.com"
order by order_date desc;

select count(o.order_id)
from orders o
join member m
on o.member_id = m.member_id
where m.email = "test@test.com";

/*
@Query("select new com.example.shop.dto.CartDetailDto(ci.id, i.itemNm," +
            "i.price, ci.count, im.imgUrl) " +
            "from CartItem ci, ItemImg im " +
            "join ci.item i " +
            "where ci.cart.id = :cartId " +
            "and im.item.id = ci.item.id " +
            "and im.repimgYn = 'Y' " +
            "order by ci.regTime desc"
           )

*/
select *
from cart_item ci
join item i
on ci.item_id = i.item_id
join item_img im
on i.item_id = im.item_id;

select ci.cart_item_id, i.item_nm, i.price, ci.count, im.img_url
from cart_item ci
join item i
on ci.item_id = i.item_id
join item_img im
on i.item_id = im.item_id
where im.repimg_Yn = 'Y'
order by ci.reg_time desc;

-- 특정 cart_id = 2에 담긴 항목만 조회
select ci.cart_item_id, i.item_nm, i.price, ci.count, im.img_url
from cart_item ci
join item i
on ci.item_id = i.item_id
join item_img im
on i.item_id = im.item_id
where im.repimg_Yn = 'Y' and cart_id = 2
order by ci.reg_time desc;


