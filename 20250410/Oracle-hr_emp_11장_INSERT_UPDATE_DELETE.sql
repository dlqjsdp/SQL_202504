/*

������ ����, ����, ����
- INSERT
- UPDATE
- DELETE


-- ����ڰ� ���� ���α׷��̳� ���Ǿ ���� ����� �����͸� ���������� ó���ϴµ� ����ϴ� DML(Data Manipulation Language)


�����(���� ���α׷�)�� DBMS���� �������̽� ����
- SELECT: ���̺��� ���ǿ� �´� Ʃ���� �˻�
- INSERT: ���̺� ���ο� Ʃ���� ����
- UPDATE: ���̺��� ���ǿ� �´� Ʃ���� ������ ����
- DELETE: ���̺��� ���ǿ� �´� Ʃ���� ����



--  ������ ����(INSERT), ����(UPDATE), ����(DELETE)�� Ʈ�����(Transaction) �������� ����
*/


/*

���̺� ���ο� ���� ����
INSERT INTO ���̺� [(��1, ��2, ��3, ��)]
VALUES (��1, ��2, ��3, ��);

*/




-- countries ���̺��� ��� ���� ���� �����Ͽ� ����ϴ� ����
SELECT * FROM countries;


-- countries ���̺� ���ѹα� �����͸� �߰��ϴ� ����
-- 'KR'�� �ѱ� �ڵ�, 'South Korea'�� ���� �̸�, 3�� ���� ��ȣ
INSERT INTO countries
VALUES ('KR', 'South Korea', 3);



-- countries ���̺��� �߰��� ���� ������ Ȯ��
SELECT * FROM countries  -- countries ���̺��� ��� ���� ����
WHERE country_id = 'KR';  -- country_id�� 'KR'�� ���ڵ带 ã��


-- Ȯ��
SELECT * FROM countries;








-- countries ���̺� ���� �����͸� �߰��ϴ� ����
-- country_id�� 'KP', country_name�� 'North Korea', region_id�� 3
INSERT INTO countries (country_id, country_name, region_id)
VALUES ('KP', 'North Korea', 3);


-- Ȯ��
SELECT * FROM countries;


-- countries ���̺��� �߰��� ���� ������ Ȯ��
SELECT * FROM countries  -- countries ���̺��� ��� ���� ����
WHERE country_id = 'KP';  -- country_id�� 'KP'�� ���ڵ带 ã��









-- departments ���̺��� ��� �����͸� ��ȸ�ϴ� ����
SELECT * FROM departments;

-- departments ���̺� ���ο� �μ� ������ �߰��ϴ� ����
-- �μ� ID�� 280, �μ� �̸��� 'Testing', �Ŵ��� ID�� 200, ��ġ ID�� 1700
INSERT INTO departments
VALUES (280, 'Testing', 200, 1700);


-- departments ���̺��� �߰��� �μ� ������ Ȯ��
SELECT * FROM departments  -- departments ���̺��� ��� ���� ����
WHERE department_id = 280;  -- department_id�� 280�� ���ڵ带 ã��

-- Ȯ��
SELECT * FROM departments;










-- departments ���̺� ������ �м� �μ� ������ �߰��ϴ� ����
-- department_id�� 290, department_name�� 'Data Analytics', location_id�� 1700
INSERT INTO departments (department_id, department_name, location_id)
VALUES (290, 'Data Analytics', 1700);

-- Ȯ��
SELECT * FROM departments;


-- departments ���̺��� �߰��� �μ� ������ Ȯ��
SELECT * FROM departments  -- departments ���̺��� ��� ���� ����
WHERE department_id = 290;  -- department_id�� 290�� ���ڵ带 ã��









-- Ȯ��
SELECT * FROM  jobs;

-- jobs ���̺� ���ο� ���� ������ �߰��ϴ� ����
-- ���� ID�� 'IT DS', �������� 'Data Scientist', �ּ� �޿��� 10000, �ִ� �޿��� 20000
INSERT INTO jobs
VALUES ('IT DS', 'Data Scientist', 10000, 20000);



-- jobs ���̺��� �߰��� ���� ������ Ȯ��
SELECT * FROM jobs  -- jobs ���̺��� ��� ���� ����
WHERE job_id = 'IT DS';  -- job_id�� 'IT DS'�� ���ڵ带 ã��


-- Ȯ��
SELECT * FROM  jobs;





-- jobs ���̺� ������ �м��� ���� ������ �߰��ϴ� ����
-- job_id�� 'IT DA', job_title�� 'Data Analyst', min_salary�� 10000, max_salary�� 20000
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
VALUES ('IT DA', 'Data Analyst', 10000, 20000);


-- jobs ���̺��� �߰��� ���� ������ Ȯ��
SELECT * FROM jobs  -- jobs ���̺��� ��� ���� ����
WHERE job_id = 'IT DA';  -- job_id�� 'IT DA'�� ���ڵ带 ã��


-- Ȯ��
SELECT * FROM departments;




-- DML ��ɾ ���������� �ݿ��ϱ� ���� ���
COMMIT;







/*
 UPDATE
 ���̺� ���� ���� ���ο� ������ ����
 
 
UPDATE ���̺�
SET ��1 = ��1, [,��2 = ��2, ��3 = ��3, ��]
[WHERE ���ǽ�];

*/


-- 'KP'�� �ش��ϴ� ������ �̸��� 'Democratic People's Republic of Korea'�� ������Ʈ
UPDATE countries  -- countries ���̺��� ������Ʈ
SET country_name = 'Democratic People''s Republic of Korea'  -- ���� �̸��� 'Democratic People's Republic of Korea'�� ����
WHERE country_id = 'KP';  -- country_id�� 'KP'�� ���ڵ带 ã��



-- Ȯ��
SELECT * FROM countries;



-- 'KP'�� �ش��ϴ� ������ �̸��� ������Ʈ�� �� Ȯ��
SELECT * FROM countries  -- countries ���̺��� ��� ���� ����
WHERE country_id = 'KP';  -- country_id�� 'KP'�� ���ڵ带 ã��




-- 'KR'�� �ش��ϴ� ������ �̸��� 'Republic of Korea'�� ������Ʈ
UPDATE countries   -- countries ���̺��� ������Ʈ
SET country_name = 'Republic of Korea'    -- ���� �̸��� 'Republic of Korea'�� ����
WHERE country_id = 'KR';   -- country_id�� 'KR'�� ���ڵ带 ã��



-- countries ���̺��� ������Ʈ�� ���� ������ Ȯ��
SELECT * FROM countries  -- countries ���̺��� ��� ���� ����
WHERE country_id = 'KR';  -- country_id�� 'KR'�� ���ڵ带 ã��






-- 280�� �ش��ϴ� �μ��� �̸��� 'IT Testing'���� ������Ʈ
UPDATE departments  -- departments ���̺��� ������Ʈ
SET department_name = 'IT Testing'   -- �μ� �̸��� 'IT Testing'���� ����
WHERE department_id = 280;   -- department_id�� 280�� ���ڵ带 ã��


-- departments ���̺��� ������Ʈ�� �μ� ������ Ȯ��
SELECT * FROM departments  
WHERE department_id = 280; 


-- Ȯ��
SELECT * FROM departments ;





-- 280�� �ش��ϴ� �μ��� �̸��� 'IT Quality Assurance'�� ������Ʈ
UPDATE departments  -- departments ���̺��� ������Ʈ
SET department_name = 'IT Quality Assurance'  -- �μ� �̸��� 'IT Quality Assurance'�� ����
WHERE department_id = 280;    -- department_id�� 280�� ���ڵ带 ã��


-- departments ���̺��� ������Ʈ�� �μ� ������ Ȯ��
SELECT * FROM departments 
WHERE department_id = 280; 



-- Ȯ��
SELECT * FROM departments; 


-- IT DS�� �ش��ϴ� ������ ID�� ������ ������Ʈ
UPDATE jobs  -- jobs ���̺��� ������Ʈ
SET job_id = 'IT QA', job_title = 'Quality Assurance'   -- ���� ID�� 'IT QA'��, ���� ������ 'Quality Assurance'�� ����
WHERE job_id = 'IT DS';    -- job_id�� 'IT DS'�� ���ڵ带 ã��


-- Ȯ��
SELECT * FROM jobs;



-- jobs ���̺��� ������Ʈ�� ���� ������ Ȯ��
SELECT * FROM jobs  -- jobs ���̺��� ��� ���� ����
WHERE job_id = 'IT QA';  -- job_id�� 'IT QA'�� ���ڵ带 ã��


/*

DELETE
���̺��� �����͸� ����

DELETE [FROM] ���̺�
[WHERE ���ǽ�];


*/

-- country_id�� 'KP'�� ������ ����
DELETE
FROM countries   -- countries ���̺��� ����
WHERE country_id = 'KP';  -- country_id�� 'KP'�� ���ڵ带 ã��




-- country_id�� 'KR'�� ������ ����
DELETE
FROM countries  -- countries ���̺��� ����
WHERE country_id = 'KR';   -- country_id�� 'KR'�� ���ڵ带 ã��



-- department_id�� 280�� �μ��� ����
DELETE
FROM departments   -- departments ���̺��� ����
WHERE department_id = 280;   -- department_id�� 280�� ���ڵ带 ã��




-- department_id�� 290�� �μ��� ����
DELETE
FROM departments
WHERE department_id = 290;




-- job_id�� 'IT QA'�� ������ ����
DELETE
FROM jobs
WHERE job_id = 'IT QA';



-- job_id�� 'IT DA'�� ������ ����
DELETE
FROM jobs
WHERE job_id = 'IT DA';





commit;




