select *
from jobs;

SELECT *
FROM employees
--WHERE employee_id BETWEEN 120 AND 130;
where employee_id>=120 and employee_id<=130;

SELECT *
FROM employees
--WHERE salary BETWEEN 10000 AND 12000;
where salary>=10000 and salary<=12000;

SELECT *
FROM employees
--WHERE first_name IN ('Steven', 'John', 'Peter');
where first_name='Steven' or first_name='John' or first_name='Peter';

SELECT *
FROM countries;

SELECT *
FROM countries
WHERE country_id IN ('IT', 'JP', 'US');

SELECT *
FROM countries
WHERE country_id not in ('IT', 'JP', 'US');

SELECT *
FROM locations
WHERE city LIKE 'South%';

SELECT *
FROM locations
WHERE street_address LIKE '%St';

-- union, union all, minus, intersect

-- UNION (������)
SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id= 60;

SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id= 100;

SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id= 60
UNION
SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id= 100;

SELECT employee_id, first_name
FROM employees
WHERE employee_id<= 160
UNION
SELECT employee_id, first_name
FROM employees
WHERE employee_id>= 140
order by employee_id;

SELECT employee_id, first_name
FROM employees
WHERE employee_id<= 160
UNION all
SELECT employee_id, first_name
FROM employees
WHERE employee_id>= 140
order by employee_id;

SELECT employee_id, first_name
FROM employees
WHERE employee_id<= 160
minus
SELECT employee_id, first_name
FROM employees
WHERE employee_id>= 140
order by employee_id;

SELECT employee_id, first_name
FROM employees
WHERE employee_id<= 160
intersect
SELECT employee_id, first_name
FROM employees
WHERE employee_id>= 140
order by employee_id;

-- employees ���̺��� job_id�� ��AD���� �����ϴ� ���� ��ȸ
SELECT *
FROM employees
WHERE job_id LIKE 'AD%';

-- employees ���̺��� first_name���� ��ni���� �����ϴ� ���� ��ȸ
SELECT *
FROM employees
WHERE first_name LIKE '%ni%';

-- jobs ���̺��� job_title �������� �����Ͽ� ���� ��ȸ
SELECT job_title
FROM jobs
ORDER BY job_title;

-- countries ���̺��� country_name ���� ������������ �����Ͽ� ��ȸ
SELECT country_name
FROM countries
ORDER BY country_name DESC;

SELECT first_name, LOWER(first_name), 
UPPER(first_name), INITCAP(first_name)
FROM employees;

SELECT job_id, SUBSTR(job_id, 1, 2), SUBSTR(job_id, 4)
FROM employees;
 
SELECT job_id, REPLACE(job_id, 'MGR', 'MANAGER') as ����
FROM employees;

SELECT CONCAT(first_name, last_name)
FROM employees;

SELECT CONCAT(first_name, CONCAT(' ', last_name))
FROM employees;

SELECT first_name, INSTR(first_name, 'a')
FROM employees;

SELECT first_name, substr(first_name, INSTR(first_name, 'a'))
FROM employees;

SELECT '  Suan  ', '  Su an'
FROM dual;

SELECT length(TRIM('  Suan  ')), TRIM('  Su an')
FROM dual;

-- jobs ���̺��� job_title�� �ҹ��ڿ� �빮�ڷ� ��ȯ�� job_title�� ��ȸ
select job_title, LOWER(job_title), UPPER(job_title)
from jobs;

--  employees ���̺��� first_name ù1���ڿ� last_name ��ȸ
select first_name, SUBSTR(first_name, 1, 1) as first_char, last_name
from employees;

-- employees ���̺��� job_id�� ��REP�� �κκ��� ��REPRESENTATIVE���� �ٲ㼭 ��ȸ
select job_id, REPLACE(job_id, 'REP', 'REPRESENTATIVE')
from employees;

-- employees���̺��� first_name ù1���ڿ� last_name�� �߰��� ������ �ΰ� �ϳ��� �����Ͽ� ��ȸ
SELECT first_name, CONCAT(CONCAT(SUBSTR(first_name, 1, 1), ' '), last_name)
FROM employees;

-- employees ���̺��� first_name�� last_name�� ���̸� ���ļ� ��ȸ
select first_name,last_name,
       LENGTH(first_name) + LENGTH(last_name)
from employees;

-- employees ���̺��� job_id�� job_id�� ��A�� ���� ��ġ ��ȸ
select job_id, INSTR(job_id, 'A')
from employees;

-- locations ���̺��� city�� 15�ڸ� ���ڿ��� �ٲٰ�, ������� ��.�� ���� ǥ���Ͽ� ��ȸ
select city, RPAD(city, 15, '.')
from locations;

-- locations ���̺��� city�� ���ʺ��� ��S�� ���ڸ� ����Ͱ� �����ʺ��� ��e�� ���ڸ� ���� ����� ��ȸ
select city, LTRIM(city, 'S'), RTRIM(city, 'e')
from locations;


SELECT salary, salary/21, 
CEIL(salary/21), FLOOR(salary/21)
FROM employees;

SELECT SIGN(-123), SIGN(0), SIGN(123)
FROM dual;

SELECT SYSDATE, SYSDATE + 1, SYSDATE -1
FROM dual;

SELECT SYSDATE, hire_date, MONTHS_BETWEEN(SYSDATE, hire_date)
FROM employees;

SELECT employee_id, hire_date, 
ADD_MONTHS(hire_date, 2), ADD_MONTHS(hire_date, -2)
FROM employees;

SELECT hire_date, 
NEXT_DAY(hire_date, 3), 
NEXT_DAY(hire_date, '������'),
LAST_DAY(hire_date)
FROM employees;

SELECT employee_id, hire_date
FROM employees
WHERE hire_date < TO_DATE('01/01/2019', 'DD/MM/YYYY');

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD')
FROM dual;

SELECT TO_CHAR(SYSDATE, 'CC AD Q')
FROM dual;
 
SELECT TO_CHAR(SYSDATE, 'AM HH:MI:SS')
FROM dual;

ALTER SESSION SET TIME_ZONE = 'Asia/Seoul';

commit;

SELECT SESSIONTIMEZONE, CURRENT_TIMESTAMP
FROM dual;

SELECT department_name, manager_id
FROM departments;

SELECT department_name, NVL(manager_id, 100)
FROM departments;

SELECT state_province
FROM locations;

SELECT NVL(state_province, 'None')
FROM locations
ORDER BY state_province;


SELECT department_name, 
NVL2(manager_id, '����������', '�����ھ���')
FROM departments;

SELECT job_title, min_salary,
DECODE(min_salary, 2500, min_salary* 1.1, min_salary)
FROM jobs;

SELECT job_title, max_salary,
DECODE(max_salary, 40000, max_salary* 0.9, max_salary)
FROM jobs;

 SELECT job_title, min_salary,
 CASE
 WHEN min_salary< 4000 THEN min_salary* 1.2
 WHEN min_salary BETWEEN 4000 AND 6000 THEN min_salary * 1.1
 ELSE min_salary
 END AS �ּұ޿�����
FROM jobs;

SELECT first_name, salary,
RANK() OVER(ORDER BY salary DESC) RANK,
DENSE_RANK() OVER(ORDER BY salary DESC) DENSE_RANK,
ROW_NUMBER() OVER(ORDER BY salary DESC) ROW_NUMBER
FROM employees;
 
SELECT COUNT(salary) 
FROM employees;

SELECT sum(salary) 
FROM employees;

SELECT COUNT(salary) 
FROM employees;

select job_id, salary
from employees;

select job_id, salary, sum(salary), avg(salary)
from employees;

-- �� ���� �޿� �հ�, ���
select sum(salary), avg(salary)
from employees;

-- �μ�(job_id)�� �޿� �հ�, ���
select job_id, sum(salary), avg(salary)
from employees
group by job_id
order by job_id;

-- �μ�(job_id)�� �޿� �հ�, ���(��, �޿� �հ谡 50000�� �̻��� �μ��� ���)
select job_id, sum(salary), avg(salary)
from employees
group by job_id
having sum(salary)>50000;

select max(salary), min(salary)
from EMPLOYEES;

select max(salary), min(salary)
from EMPLOYEES
where hire_date > '20070101';

select salary, DEPARTMENT_ID, hire_date
from EMPLOYEES
where hire_date > '20070101';

-- �μ��� �ִ�, �ּ� �޿�
select DEPARTMENT_ID, max(salary), min(salary)
from EMPLOYEES
where hire_date > '20070101'
group by DEPARTMENT_ID;

-- ��ü ���� ��ȸ
select *
from EMPLOYEES;

-- ��ü ������ �޿� �հ� ���
select sum(salary), avg(salary)
from EMPLOYEES;

-- job_id�� 50~100 ���� �޿� �հ� ���
select job_id, sum(salary), avg(salary)
from EMPLOYEES
where DEPARTMENT_ID between 50 and 100
group by job_id;

-- DEPARTMENT_ID�� 50~100 �߿��� ������ �޿��� �հ� ���
select DEPARTMENT_ID, sum(salary), round(avg(salary),1) avg
from EMPLOYEES
where DEPARTMENT_ID between 50 and 100
group by DEPARTMENT_ID;

-- DEPARTMENT_ID�� 50~100 ���̿��� ������ ������ �޿� �հ� ���
select job_id, department_id, sum(salary), round(avg(salary),1) avg
from EMPLOYEES
where DEPARTMENT_ID between 50 and 100
group by job_id, department_id;


-- DEPARTMENT_ID�� 50~100 ���� �ִ�, �ּ� �޿�
select job_id, max(salary), min(salary)
from EMPLOYEES
where DEPARTMENT_ID between 50 and 100
group by job_id;

-- �̻� >=, �ʰ� >, ���� <=, �̸� <
-- 1. employees ���̺��� salary�� 8000�̻��� ������ ���� ��ȸ
SELECT COUNT(salary)
FROM employees
WHERE salary >= 8000;

-- 2. employees ���̺��� hire_date�� 2007��1��1�� ������ ������ ���� ��ȸ
select COUNT(salary)
from EMPLOYEES
where hire_date >= '20070101';

-- 3. jobs ���̺��� max_salary ���� �հ�� ����� ��ȸ
select *
from jobs;

select sum(max_salary) �հ�, round(avg(max_salary), 2) ���
from jobs;

-- 4. employees ���̺��� job_id�� ��IT_PROG���� ������ salary �հ�� ����� ��ȸ
select * 
from employees;

select sum(salary), avg(salary)
from employees
where job_id='IT_PROG';


-- 5.  employees ���̺��� department_id�� 50�� 80 ������ ������
--      first_name, salary, �׸��� commission_pct�� ��հ���
--      first_name ���� �������� ��ȸ (null���� 0���� ���)
select * 
from employees;

select first_name, salary
from employees
where department_id BETWEEN 50 AND 80;

select first_name, salary, NVL(commission_pct, 0)
from employees
where department_id BETWEEN 50 AND 80
order by first_name;

select first_name, salary, avg(NVL(commission_pct, 0))
from employees
where department_id BETWEEN 50 AND 80
group by first_name, salary, commission_pct
order by first_name;

-- 6. jobs ���̺��� max_salary ���� �ּڰ��� max_salary ���� �ִ��� ��ȸ
select min(max_salary), max(max_salary)
from jobs;

-- 7. jobs ���̺��� job_title�� ��Programmer���� ������ 
--      max_salary���� �ּڰ��� max_salary ���� �ִ��� ��ȸ
select *
from jobs
where job_title='Programmer';

select min(max_salary), max(max_salary)
from jobs
where job_title='Programmer';

-- 8.  employees ���̺��� department_id�� 50�� �������� hire_date �ּҰ��� �ִ� ��ȸ
select *
from employees
where department_id=50;

select min(hire_date), max(hire_date)
from employees
where department_id=50;

-- 9. employees ���̺��� department_id�� 100�� �������� first_name, salary, 
--      �׸��� salary�� �л갪�� hire_date ���� �������� ��ȸ
select *
from employees
where department_id = 100;

select first_name, salary
from employees
where department_id = 100;

select first_name, salary, variance(salary)
from employees
where department_id = 100
group by first_name, salary, hire_date
ORDER BY hire_date;

select hire_date, first_name, salary, variance(salary) OVER ()
from employees
where department_id = 100
ORDER BY hire_date;

-- 10. employees ���̺��� hire_date ���� 2004��1��1�Ϻ��� 2006��12��31�� ������ �����͸�
--      job_id �������� �׷�ȭ�� �ڿ� job_id�� salary �ּڰ��� �ִ밪�� ��ȸ
select *
from employees
where hire_date between '20040101' and '20061231';

select job_id, min(salary), max(salary)
from employees
where hire_date between '20040101' and '20061231'
group by job_id;

-- 11.  employees ���̺��� department_id�� 50�� 80�� �����͸� 
--      department_id�� job_id �������� �׷�ȭ�� �ڿ� department_id�� job_id, 
--      salary�հ�, �ּڰ�, �ִ밪�� job_id �������� �����Ͽ� ��ȸ
select *
from employees
where department_id between 50 and 80;

select department_id, job_id
from employees
where department_id between 50 and 80
group by department_id, job_id;

select department_id, job_id, sum(salary), min(salary), max(salary)
from employees
where department_id between 50 and 80
group by department_id, job_id
order by job_id;

-- 12.  employees ���̺��� department_id�� job_id �������� �׷�ȭ�� �ڿ�
--      salary ��հ��� 12000 �̻��� �����͸� department_id�� job_id, salary
--      �ּڰ�, �ִ밪, ����� department_id �������� �����Ͽ� ��ȸ

--employees ���̺��� department_id�� job_id �������� �׷�ȭ
select *
from employees
group by department_id, job_id;

-- employees ���̺��� department_id�� job_id �������� �׷�ȭ
-- + department_id�� job_id, salary �ּڰ�, �ִ밪, ���
select department_id, job_id, min(salary), max(salary), avg(salary)
from employees
group by department_id, job_id;

-- employees ���̺��� department_id�� job_id �������� �׷�ȭ
-- + department_id�� job_id, salary �ּڰ�, �ִ밪, ���
-- + salary ��հ��� 12000 �̻��� ������
select department_id, job_id, min(salary), max(salary), avg(salary)
from employees
group by department_id, job_id
having avg(salary)>=12000;

-- employees ���̺��� department_id�� job_id �������� �׷�ȭ
-- + department_id�� job_id, salary �ּڰ�, �ִ밪, ���
-- + salary ��հ��� 12000 �̻��� ������
-- + department_id �������� ����
select department_id, job_id, min(salary), max(salary), avg(salary)
from employees
group by department_id, job_id
having avg(salary)>=12000
order by department_id;
