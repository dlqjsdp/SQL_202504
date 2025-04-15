-- ���̺� ��ü ��ȸ
select *
from countries;

-- Ư�� �÷��� ��ȸ(select �� �̸�)
select country_id, country_name
from countries;

-- ��Ī ����ϱ� (select �� �̸� as ��Ī)
select country_id as ����ID, country_name as ������
from countries;

-- �ߺ� ����(select distinct)
select distinct region_id
from countries;

-- ���� ������(||)
select country_name || country_id
from countries;

-- Ư�� �÷��� ��ȸ(select �� �̸�)
select street_address, city
from locations;

-- Ư�� �÷��� ��ȸ(select �� �̸�)
select job_id, job_title
from jobs;

-- ���������
select job_title, min_salary * 1.1, max_salary * 1.1
from jobs;

-- ���Ῥ����
select first_name || last_name as �̸�
from employees;

-- �ߺ� ����(select distinct)
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