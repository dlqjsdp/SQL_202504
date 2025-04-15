-- 정렬과 집합 연산 
-- ORDER BY
--  UNION, UNION ALL, INTERSECT, MINUS


-- ORDER BY ,  테이블 내용을 사용자가 원하는 순서로 출력
--  오름차순(기본): ASC / 내림차순: DESC

-- employees 테이블에서 직원의 이름(first_name)과 성(last_name)을 조회하고, 이름으로 정렬하여 결과를 표시하는 쿼리
SELECT first_name, last_name
FROM employees
ORDER BY first_name;



-- employees 테이블에서 직원의 이름(first_name)과 성(last_name)을 조회하고, 이름으로 내림차순 정렬하여 결과를 표시하는 쿼리
SELECT first_name, last_name
FROM employees
ORDER BY first_name DESC;


-- departments 테이블에서 부서 이름(department_name)을 조회하고, 부서 이름으로 오름차순 정렬하여 결과를 표시하는 쿼리
SELECT department_name
FROM departments
ORDER BY department_name;



-- departments 테이블에서 부서 이름(department_name)을 조회하고, 부서 이름으로 내림차순 정렬하여 결과를 표시하는 쿼리
SELECT department_name
FROM departments
ORDER BY department_name DESC;




-- 먼저 country_id를 기준으로 정렬한 후, 같은 country_id 내에서 city를 알파벳순으로 정렬
-- locations 테이블에서 국가 ID(country_id)와 도시(city)를 조회하는 쿼리
SELECT country_id, city
FROM locations
ORDER BY country_id, city;


-- 도시 이름을 기준으로 오름차순 정렬하여 국가 ID(country_id)와 도시(city)를 조회하는 쿼리
SELECT country_id, city
FROM locations
ORDER BY city;



-- 위치 ID(location_id)를 기준으로 내림차순 정렬한 후, 
-- 같은 위치 ID 내에서 부서 이름(department_name)을 알파벳순으로 정렬하여 조회하는 쿼리
SELECT location_id, department_name
FROM departments
ORDER BY location_id DESC, department_name;




-- SQL연산자, 조건 비교 확장을 위해서 사용
-- BETWEEN 연산자
-- employees 테이블에서 직원 ID(employee_id)가 120 이상 130 이하인 모든 직원의 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE employee_id BETWEEN 120 AND 130;




-- employees 테이블에서 급여(salary)가 10,000 이상 12,000 이하인 모든 직원의 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 12000;





-- IN 연산자
-- 여러 개의 데이터 값을 지정하여 일치하는 데이터만 출력할 때 사용

-- employees 테이블에서 이름(first_name)이 'Steven', 'John', 'Peter' 중 하나인 모든 직원의 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE first_name IN ('Steven', 'John', 'Peter');




-- countries 테이블에서 국가 ID(country_id)가 'US', 'IL', 'SG' 중 하나에 해당하는 모든 국가의 정보를 조회하는 쿼리
SELECT *
FROM countries
WHERE country_id IN ('US', 'IL', 'SG');




-- locations 테이블에서 도시(city)가 'Sao Paulo', 'London', 'Southlake'가 아닌 모든 도시의 정보를 조회하는 쿼리
SELECT *
FROM locations
WHERE city NOT IN ('Sao Paulo', 'London', 'Southlake');





--  IS NULL 연산자
-- 특정 속성의 값이 NULL 값인지를 비교하여 데이터 조회
-- locations 테이블에서 주(state_province)가 NULL인 모든 레코드의 정보를 조회하는 쿼리
SELECT *
FROM locations
WHERE state_province IS NULL;



-- employees 테이블에서 커미션 비율(commission_pct)이 NULL이 아닌 모든 직원의 정보를 조회하는 쿼리
SELECT *
FROM employees
WHERE commission_pct IS NOT NULL;


-- LIKE 연산자
-- 문자열 속성에서 부분적으로 일치하는 것만 출력할 때 사용
--  % 0개 이상의 문자 (문자의 내용과 개수는 상관 없음)
--   _ 1개의 문자 (문자의 내용은 상관 없음)

-- LIKE ‘data%’ data로 시작하는 문자열 (길이 상관 없이 data로 시작)
-- LIKE ‘%data’ data로 끝나는 문자열 (길이 상관 없이 data로 끝남)
-- LIKE ‘%data%’ data가 포함된 문자열 (길이 상관 없이 data가 포함)
-- LIKE ‘data____’ data로 시작하는 8자리 문자열
-- LIKE ‘____data’ data로 끝나는 8자리 문자열



-- locations 테이블에서 도시 이름(city)이 'South'로 시작하는 모든 레코드를 조회하는 쿼리
SELECT *
FROM locations
WHERE city LIKE 'South%';




-- locations 테이블에서 거리 주소(street_address)가 'St'로 끝나는 모든 레코드를 조회하는 쿼리
SELECT *
FROM locations
WHERE street_address LIKE '%St';




-- locations 테이블에서 도시 이름(city)이 'South'로 시작하고 그 뒤에 4개의 문자가 있는 모든 레코드를 조회하는 쿼리
SELECT *
FROM locations
WHERE city LIKE 'South____';



-- 집합 연산자 , 연산자 앞뒤의 값을 비교하여 데이터 조회
-- UNION 합집합 (중복 제외)
-- UNION ALL 합집합 (중복 포함)
-- MINUS 차집합
-- INTERSECrT 교집합


-- UNION: 중복 제거 (distinct)
-- UNION ALL: 중복 포함 (모든 결과)

-- 부서 ID가 60인 직원과 부서 ID가 100인 직원을 조회하며, 중복된 결과는 제거하는 쿼리
-- 동일한 행이 있는 경우 하나의 결과로만 표시
SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id = 60
UNION
SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id = 100;



-- 직원 ID가 160 이하인 직원과 직원 ID가 140 이상의 직원을 조회하며, 중복된 결과는 제거
SELECT employee_id, first_name
FROM employees
WHERE employee_id <= 160
UNION
SELECT employee_id, first_name
FROM employees
WHERE employee_id >= 140;





-- 직원 ID가 160 이하인 직원과 140 이상의 직원을 조회하고, 중복된 결과를 포함
SELECT employee_id, first_name
FROM employees
WHERE employee_id <= 160
UNION ALL
SELECT employee_id, first_name
FROM employees
WHERE employee_id >= 140;





-- 집합 연산자

-- MINUS 연산자도 distinct한 결과를 반환
-- MINUS를 사용하면 첫 번째 쿼리의 결과에서 두 번째 쿼리의 결과에 포함된 중복된 행이 제거된 결과
-- MINUS는 항상 중복된 행을 제외한 결과를 반환하며, 결과는 distinct한 형태로 제공
-- MINUS 연산자는 첫 번째 쿼리의 결과에서 두 번째 쿼리의 결과를 뺀 결과를 반환


-- 직원 ID가 160 이하인 직원들 중에서 직원 ID가 140 이상인 직원을 제외한 결과를 조회하는 쿼리
-- 직원 ID가 160 이하이면서 140 미만인 직원들만 반환
SELECT employee_id, first_name
FROM employees
WHERE employee_id <= 160
MINUS
SELECT employee_id, first_name
FROM employees
WHERE employee_id >= 140;



-- 직원 ID가 160 이하이면서 직원 ID가 140 이상인 직원의 교집합 결과 조회
-- INTERSECT는 중복된 행을 자동으로 제거하므로 결과는 distinct한 형태로 제공
-- INTERSECT: 두 쿼리의 교집합을 반환 (공통된 행만 포함)
SELECT employee_id, first_name
FROM employees
WHERE employee_id <= 160
INTERSECT
SELECT employee_id, first_name
FROM employees
WHERE employee_id >= 140;








































