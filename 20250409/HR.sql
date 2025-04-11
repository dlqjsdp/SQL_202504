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
