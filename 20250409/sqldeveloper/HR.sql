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
