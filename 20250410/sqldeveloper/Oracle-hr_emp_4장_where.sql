-- 조건 검색과 비교, 논리 연산 where, or, not

-- WHERE   특정 조건을 만족하는 데이터만 조회
-- employees 테이블에서 직원 ID가 110인 직원의 모든 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE employee_id = 110;


-- employees 테이블에서 직원 ID가 110이 아닌 직원의 모든 정보를 조회하는 쿼리
-- <>는 !=와 같은 의미
SELECT *
FROM employees
WHERE employee_id <> 110;



-- employees 테이블에서 직원 ID가 110보다 작은 직원의 모든 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE employee_id < 110;


-- employees 테이블에서 직원 ID가 110보다 큰 직원의 모든 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE employee_id > 110;



-- employees 테이블에서 직원 ID가 110 이하인 직원의 모든 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE employee_id <= 110;



-- employees 테이블에서 직원 ID가 110 이상인 직원의 모든 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE employee_id >= 110;



-- 논리연산자,  여러 조건을 논리 연산자로 연결시켜 데이터 조회 and, or, not
-- employees 테이블에서 직원 ID가 120 이상 130 이하인 직원의 모든 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE employee_id >= 120 AND employee_id <= 130;



-- employees 테이블에서 급여가 10,000 이상 12,000 이하인 직원의 모든 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE salary >= 10000 AND salary <= 12000;




-- employees 테이블에서 매니저 ID가 100 또는 120인 직원의 모든 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE manager_id = 100 OR manager_id = 120;


SELECT *
FROM employees
WHERE last_name = 'King' OR last_name = 'Smith';

-- employees 테이블에서 성(last_name)이 'King' 또는 'Smith'인 직원의 모든 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE NOT department_id = 50;


-- employees 테이블에서 부서 ID가 50 또는 80이 아닌 직원의 모든 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE NOT department_id = 50 AND NOT department_id = 80;







