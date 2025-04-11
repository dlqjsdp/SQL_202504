-- ���� �˻��� ��, �� ���� where, or, not

-- WHERE   Ư�� ������ �����ϴ� �����͸� ��ȸ
-- employees ���̺��� ���� ID�� 110�� ������ ��� ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE employee_id = 110;


-- employees ���̺��� ���� ID�� 110�� �ƴ� ������ ��� ������ ��ȸ�ϴ� ����
-- <>�� !=�� ���� �ǹ�
SELECT *
FROM employees
WHERE employee_id <> 110;



-- employees ���̺��� ���� ID�� 110���� ���� ������ ��� ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE employee_id < 110;


-- employees ���̺��� ���� ID�� 110���� ū ������ ��� ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE employee_id > 110;



-- employees ���̺��� ���� ID�� 110 ������ ������ ��� ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE employee_id <= 110;



-- employees ���̺��� ���� ID�� 110 �̻��� ������ ��� ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE employee_id >= 110;



-- ��������,  ���� ������ �� �����ڷ� ������� ������ ��ȸ and, or, not
-- employees ���̺��� ���� ID�� 120 �̻� 130 ������ ������ ��� ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE employee_id >= 120 AND employee_id <= 130;



-- employees ���̺��� �޿��� 10,000 �̻� 12,000 ������ ������ ��� ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE salary >= 10000 AND salary <= 12000;




-- employees ���̺��� �Ŵ��� ID�� 100 �Ǵ� 120�� ������ ��� ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE manager_id = 100 OR manager_id = 120;


SELECT *
FROM employees
WHERE last_name = 'King' OR last_name = 'Smith';

-- employees ���̺��� ��(last_name)�� 'King' �Ǵ� 'Smith'�� ������ ��� ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE NOT department_id = 50;


-- employees ���̺��� �μ� ID�� 50 �Ǵ� 80�� �ƴ� ������ ��� ������ ��ȸ�ϴ� ����
SELECT *
FROM employees
WHERE NOT department_id = 50 AND NOT department_id = 80;







