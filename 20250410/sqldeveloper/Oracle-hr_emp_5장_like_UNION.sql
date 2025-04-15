-- ���İ� ���� ���� 
-- ORDER BY
--  UNION, UNION ALL, INTERSECT, MINUS


-- ORDER BY ,  ���̺� ������ ����ڰ� ���ϴ� ������ ���
--  ��������(�⺻): ASC / ��������: DESC

-- employees ���̺��� ������ �̸�(first_name)�� ��(last_name)�� ��ȸ�ϰ�, �̸����� �����Ͽ� ����� ǥ���ϴ� ����
SELECT first_name, last_name
FROM employees
ORDER BY first_name;



-- employees ���̺��� ������ �̸�(first_name)�� ��(last_name)�� ��ȸ�ϰ�, �̸����� �������� �����Ͽ� ����� ǥ���ϴ� ����
SELECT first_name, last_name
FROM employees
ORDER BY first_name DESC;


-- departments ���̺��� �μ� �̸�(department_name)�� ��ȸ�ϰ�, �μ� �̸����� �������� �����Ͽ� ����� ǥ���ϴ� ����
SELECT department_name
FROM departments
ORDER BY department_name;



-- departments ���̺��� �μ� �̸�(department_name)�� ��ȸ�ϰ�, �μ� �̸����� �������� �����Ͽ� ����� ǥ���ϴ� ����
SELECT department_name
FROM departments
ORDER BY department_name DESC;




-- ���� country_id�� �������� ������ ��, ���� country_id ������ city�� ���ĺ������� ����
-- locations ���̺��� ���� ID(country_id)�� ����(city)�� ��ȸ�ϴ� ����
SELECT country_id, city
FROM locations
ORDER BY country_id, city;


-- ���� �̸��� �������� �������� �����Ͽ� ���� ID(country_id)�� ����(city)�� ��ȸ�ϴ� ����
SELECT country_id, city
FROM locations
ORDER BY city;



-- ��ġ ID(location_id)�� �������� �������� ������ ��, 
-- ���� ��ġ ID ������ �μ� �̸�(department_name)�� ���ĺ������� �����Ͽ� ��ȸ�ϴ� ����
SELECT location_id, department_name
FROM departments
ORDER BY location_id DESC, department_name;




-- SQL������, ���� �� Ȯ���� ���ؼ� ���
-- BETWEEN ������
-- employees ���̺��� ���� ID(employee_id)�� 120 �̻� 130 ������ ��� ������ ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE employee_id BETWEEN 120 AND 130;




-- employees ���̺��� �޿�(salary)�� 10,000 �̻� 12,000 ������ ��� ������ ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 12000;





-- IN ������
-- ���� ���� ������ ���� �����Ͽ� ��ġ�ϴ� �����͸� ����� �� ���

-- employees ���̺��� �̸�(first_name)�� 'Steven', 'John', 'Peter' �� �ϳ��� ��� ������ ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE first_name IN ('Steven', 'John', 'Peter');




-- countries ���̺��� ���� ID(country_id)�� 'US', 'IL', 'SG' �� �ϳ��� �ش��ϴ� ��� ������ ������ ��ȸ�ϴ� ����
SELECT *
FROM countries
WHERE country_id IN ('US', 'IL', 'SG');




-- locations ���̺��� ����(city)�� 'Sao Paulo', 'London', 'Southlake'�� �ƴ� ��� ������ ������ ��ȸ�ϴ� ����
SELECT *
FROM locations
WHERE city NOT IN ('Sao Paulo', 'London', 'Southlake');





--  IS NULL ������
-- Ư�� �Ӽ��� ���� NULL �������� ���Ͽ� ������ ��ȸ
-- locations ���̺��� ��(state_province)�� NULL�� ��� ���ڵ��� ������ ��ȸ�ϴ� ����
SELECT *
FROM locations
WHERE state_province IS NULL;



-- employees ���̺��� Ŀ�̼� ����(commission_pct)�� NULL�� �ƴ� ��� ������ ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE commission_pct IS NOT NULL;


-- LIKE ������
-- ���ڿ� �Ӽ����� �κ������� ��ġ�ϴ� �͸� ����� �� ���
--  % 0�� �̻��� ���� (������ ����� ������ ��� ����)
--   _ 1���� ���� (������ ������ ��� ����)

-- LIKE ��data%�� data�� �����ϴ� ���ڿ� (���� ��� ���� data�� ����)
-- LIKE ��%data�� data�� ������ ���ڿ� (���� ��� ���� data�� ����)
-- LIKE ��%data%�� data�� ���Ե� ���ڿ� (���� ��� ���� data�� ����)
-- LIKE ��data____�� data�� �����ϴ� 8�ڸ� ���ڿ�
-- LIKE ��____data�� data�� ������ 8�ڸ� ���ڿ�



-- locations ���̺��� ���� �̸�(city)�� 'South'�� �����ϴ� ��� ���ڵ带 ��ȸ�ϴ� ����
SELECT *
FROM locations
WHERE city LIKE 'South%';




-- locations ���̺��� �Ÿ� �ּ�(street_address)�� 'St'�� ������ ��� ���ڵ带 ��ȸ�ϴ� ����
SELECT *
FROM locations
WHERE street_address LIKE '%St';




-- locations ���̺��� ���� �̸�(city)�� 'South'�� �����ϰ� �� �ڿ� 4���� ���ڰ� �ִ� ��� ���ڵ带 ��ȸ�ϴ� ����
SELECT *
FROM locations
WHERE city LIKE 'South____';



-- ���� ������ , ������ �յ��� ���� ���Ͽ� ������ ��ȸ
-- UNION ������ (�ߺ� ����)
-- UNION ALL ������ (�ߺ� ����)
-- MINUS ������
-- INTERSECrT ������


-- UNION: �ߺ� ���� (distinct)
-- UNION ALL: �ߺ� ���� (��� ���)

-- �μ� ID�� 60�� ������ �μ� ID�� 100�� ������ ��ȸ�ϸ�, �ߺ��� ����� �����ϴ� ����
-- ������ ���� �ִ� ��� �ϳ��� ����θ� ǥ��
SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id = 60
UNION
SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id = 100;



-- ���� ID�� 160 ������ ������ ���� ID�� 140 �̻��� ������ ��ȸ�ϸ�, �ߺ��� ����� ����
SELECT employee_id, first_name
FROM employees
WHERE employee_id <= 160
UNION
SELECT employee_id, first_name
FROM employees
WHERE employee_id >= 140;





-- ���� ID�� 160 ������ ������ 140 �̻��� ������ ��ȸ�ϰ�, �ߺ��� ����� ����
SELECT employee_id, first_name
FROM employees
WHERE employee_id <= 160
UNION ALL
SELECT employee_id, first_name
FROM employees
WHERE employee_id >= 140;





-- ���� ������

-- MINUS �����ڵ� distinct�� ����� ��ȯ
-- MINUS�� ����ϸ� ù ��° ������ ������� �� ��° ������ ����� ���Ե� �ߺ��� ���� ���ŵ� ���
-- MINUS�� �׻� �ߺ��� ���� ������ ����� ��ȯ�ϸ�, ����� distinct�� ���·� ����
-- MINUS �����ڴ� ù ��° ������ ������� �� ��° ������ ����� �� ����� ��ȯ


-- ���� ID�� 160 ������ ������ �߿��� ���� ID�� 140 �̻��� ������ ������ ����� ��ȸ�ϴ� ����
-- ���� ID�� 160 �����̸鼭 140 �̸��� �����鸸 ��ȯ
SELECT employee_id, first_name
FROM employees
WHERE employee_id <= 160
MINUS
SELECT employee_id, first_name
FROM employees
WHERE employee_id >= 140;



-- ���� ID�� 160 �����̸鼭 ���� ID�� 140 �̻��� ������ ������ ��� ��ȸ
-- INTERSECT�� �ߺ��� ���� �ڵ����� �����ϹǷ� ����� distinct�� ���·� ����
-- INTERSECT: �� ������ �������� ��ȯ (����� �ุ ����)
SELECT employee_id, first_name
FROM employees
WHERE employee_id <= 160
INTERSECT
SELECT employee_id, first_name
FROM employees
WHERE employee_id >= 140;








































