-- 테이블 전체 조회
select *
from countries;

-- 특정 컬럼만 조회(select 열 이름)
select country_id, country_name
from countries;

-- 별칭 사용하기 (select 열 이름 as 별칭)
select country_id as 국가ID, country_name as 국가명
from countries;

-- 중복 제외(select distinct)
select distinct region_id
from countries;

-- 연결 연산자(||)
select country_name || country_id
from countries;

-- 특정 컬럼만 조회(select 열 이름)
select street_address, city
from locations;

-- 특정 컬럼만 조회(select 열 이름)
select job_id, job_title
from jobs;

-- 산술연산자
select job_title, min_salary * 1.1, max_salary * 1.1
from jobs;

-- 연결연산자
select first_name || last_name as 이름
from employees;

-- 중복 제외(select distinct)
select distinct job_id
from employees;

----------------2025.04.10------------------
select *
from EMPLOYEES;

select *
from EMPLOYEES
where EMPLOYEE_ID = 110;

select *
from EMPLOYEES
where first_name = 'John';

select *
from EMPLOYEES
where EMPLOYEE_ID <> 110;

select *
from EMPLOYEES
where EMPLOYEE_ID > 110;

select *
from EMPLOYEES
where EMPLOYEE_ID < 110;

select *
from EMPLOYEES
where EMPLOYEE_ID >= 120 and EMPLOYEE_ID < 130;

select *
from EMPLOYEES
where EMPLOYEE_ID >= 120 or EMPLOYEE_ID < 110;

select first_name, last_name
from employees
order by first_name;

select first_name, last_name
from employees
order by first_name asc;

select first_name, last_name
from employees
order by first_name desc;

select first_name, last_name
from employees
order by first_name asc, last_name desc ;

select *
from EMPLOYEES
where EMPLOYEE_ID >= 110 and EMPLOYEE_ID < 120;

select *
from EMPLOYEES
where EMPLOYEE_ID BETWEEN 110 and 120-1;

select *
from EMPLOYEES
where first_name = 'John' or first_name = 'Luis' or first_name = 'Den';

select *
from EMPLOYEES
where first_name in ('John', 'Luis', 'Den');

select *
from EMPLOYEES
where first_name not in ('John', 'Luis', 'Den');

select *
from locations
where state_province is null;

select *
from locations
where state_province is not null;

select *
from LOCATIONS
where street_address like '198%';

select *
from LOCATIONS
where street_address like '%Rie';

select *
from LOCATIONS
where street_address like '%Cola%';

select *
from COUNTRIES;

insert into COUNTRIES
values ('KR', 'South Korea', 3);

insert into COUNTRIES(country_id, country_name, region_id)
values ('KP', 'South Korea2', 3);

insert into COUNTRIES(country_id, region_id)
values ('KO', 3);

commit;

delete from COUNTRIES
where COUNTRY_ID = 'KO';

select *
from EMPLOYEES;

update EMPLOYEES
set salary = salary * 1.2;

create table customers(
    customer_id number not null primary key,
    first_name VARCHAR2(20) not null,
    last_name VARCHAR2(20) not null,
    email VARCHAR2(30),
    phone_number VARCHAR2(20),
    regist_date date
);

select *
from customers;

commit;