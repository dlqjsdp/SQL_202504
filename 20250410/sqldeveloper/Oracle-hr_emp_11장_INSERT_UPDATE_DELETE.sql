/*

데이터 삽입, 수정, 삭제
- INSERT
- UPDATE
- DELETE


-- 사용자가 응용 프로그램이나 질의어를 통해 저장된 데이터를 실질적으로 처리하는데 사용하는 DML(Data Manipulation Language)


사용자(응용 프로그램)와 DBMS간의 인터페이스 제공
- SELECT: 테이블에서 조건에 맞는 튜플을 검색
- INSERT: 테이블에 새로운 튜플을 삽입
- UPDATE: 테이블에서 조건에 맞는 튜플의 내용을 변경
- DELETE: 테이블에서 조건에 맞는 튜플을 삭제



--  데이터 삽입(INSERT), 수정(UPDATE), 삭제(DELETE)는 트랜잭션(Transaction) 과정으로 동작
*/


/*

테이블에 새로운 행을 삽입
INSERT INTO 테이블 [(열1, 열2, 열3, …)]
VALUES (값1, 값2, 값3, …);

*/




-- countries 테이블에서 모든 열과 행을 선택하여 출력하는 쿼리
SELECT * FROM countries;


-- countries 테이블에 대한민국 데이터를 추가하는 쿼리
-- 'KR'은 한국 코드, 'South Korea'는 국가 이름, 3은 지역 번호
INSERT INTO countries
VALUES ('KR', 'South Korea', 3);



-- countries 테이블에서 추가된 국가 정보를 확인
SELECT * FROM countries  -- countries 테이블의 모든 열을 선택
WHERE country_id = 'KR';  -- country_id가 'KR'인 레코드를 찾음


-- 확인
SELECT * FROM countries;








-- countries 테이블에 북한 데이터를 추가하는 쿼리
-- country_id는 'KP', country_name은 'North Korea', region_id는 3
INSERT INTO countries (country_id, country_name, region_id)
VALUES ('KP', 'North Korea', 3);


-- 확인
SELECT * FROM countries;


-- countries 테이블에서 추가된 국가 정보를 확인
SELECT * FROM countries  -- countries 테이블의 모든 열을 선택
WHERE country_id = 'KP';  -- country_id가 'KP'인 레코드를 찾음









-- departments 테이블의 모든 데이터를 조회하는 쿼리
SELECT * FROM departments;

-- departments 테이블에 새로운 부서 정보를 추가하는 쿼리
-- 부서 ID는 280, 부서 이름은 'Testing', 매니저 ID는 200, 위치 ID는 1700
INSERT INTO departments
VALUES (280, 'Testing', 200, 1700);


-- departments 테이블에서 추가된 부서 정보를 확인
SELECT * FROM departments  -- departments 테이블의 모든 열을 선택
WHERE department_id = 280;  -- department_id가 280인 레코드를 찾음

-- 확인
SELECT * FROM departments;










-- departments 테이블에 데이터 분석 부서 정보를 추가하는 쿼리
-- department_id는 290, department_name은 'Data Analytics', location_id는 1700
INSERT INTO departments (department_id, department_name, location_id)
VALUES (290, 'Data Analytics', 1700);

-- 확인
SELECT * FROM departments;


-- departments 테이블에서 추가된 부서 정보를 확인
SELECT * FROM departments  -- departments 테이블의 모든 열을 선택
WHERE department_id = 290;  -- department_id가 290인 레코드를 찾음









-- 확인
SELECT * FROM  jobs;

-- jobs 테이블에 새로운 직업 정보를 추가하는 쿼리
-- 직업 ID는 'IT DS', 직업명은 'Data Scientist', 최소 급여는 10000, 최대 급여는 20000
INSERT INTO jobs
VALUES ('IT DS', 'Data Scientist', 10000, 20000);



-- jobs 테이블에서 추가된 직업 정보를 확인
SELECT * FROM jobs  -- jobs 테이블의 모든 열을 선택
WHERE job_id = 'IT DS';  -- job_id가 'IT DS'인 레코드를 찾음


-- 확인
SELECT * FROM  jobs;





-- jobs 테이블에 데이터 분석가 직업 정보를 추가하는 쿼리
-- job_id는 'IT DA', job_title은 'Data Analyst', min_salary는 10000, max_salary는 20000
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
VALUES ('IT DA', 'Data Analyst', 10000, 20000);


-- jobs 테이블에서 추가된 직업 정보를 확인
SELECT * FROM jobs  -- jobs 테이블의 모든 열을 선택
WHERE job_id = 'IT DA';  -- job_id가 'IT DA'인 레코드를 찾음


-- 확인
SELECT * FROM departments;




-- DML 명령어를 최종적으로 반영하기 위한 방법
COMMIT;







/*
 UPDATE
 테이블에 기존 값을 새로운 값으로 변경
 
 
UPDATE 테이블
SET 열1 = 값1, [,열2 = 값2, 열3 = 값3, …]
[WHERE 조건식];

*/


-- 'KP'에 해당하는 국가의 이름을 'Democratic People's Republic of Korea'로 업데이트
UPDATE countries  -- countries 테이블을 업데이트
SET country_name = 'Democratic People''s Republic of Korea'  -- 국가 이름을 'Democratic People's Republic of Korea'로 설정
WHERE country_id = 'KP';  -- country_id가 'KP'인 레코드를 찾음



-- 확인
SELECT * FROM countries;



-- 'KP'에 해당하는 국가의 이름을 업데이트한 후 확인
SELECT * FROM countries  -- countries 테이블의 모든 열을 선택
WHERE country_id = 'KP';  -- country_id가 'KP'인 레코드를 찾음




-- 'KR'에 해당하는 국가의 이름을 'Republic of Korea'로 업데이트
UPDATE countries   -- countries 테이블을 업데이트
SET country_name = 'Republic of Korea'    -- 국가 이름을 'Republic of Korea'로 설정
WHERE country_id = 'KR';   -- country_id가 'KR'인 레코드를 찾음



-- countries 테이블에서 업데이트된 국가 정보를 확인
SELECT * FROM countries  -- countries 테이블의 모든 열을 선택
WHERE country_id = 'KR';  -- country_id가 'KR'인 레코드를 찾음






-- 280에 해당하는 부서의 이름을 'IT Testing'으로 업데이트
UPDATE departments  -- departments 테이블을 업데이트
SET department_name = 'IT Testing'   -- 부서 이름을 'IT Testing'으로 설정
WHERE department_id = 280;   -- department_id가 280인 레코드를 찾음


-- departments 테이블에서 업데이트된 부서 정보를 확인
SELECT * FROM departments  
WHERE department_id = 280; 


-- 확인
SELECT * FROM departments ;





-- 280에 해당하는 부서의 이름을 'IT Quality Assurance'로 업데이트
UPDATE departments  -- departments 테이블을 업데이트
SET department_name = 'IT Quality Assurance'  -- 부서 이름을 'IT Quality Assurance'로 설정
WHERE department_id = 280;    -- department_id가 280인 레코드를 찾음


-- departments 테이블에서 업데이트된 부서 정보를 확인
SELECT * FROM departments 
WHERE department_id = 280; 



-- 확인
SELECT * FROM departments; 


-- IT DS에 해당하는 직업의 ID와 제목을 업데이트
UPDATE jobs  -- jobs 테이블을 업데이트
SET job_id = 'IT QA', job_title = 'Quality Assurance'   -- 직업 ID를 'IT QA'로, 직업 제목을 'Quality Assurance'로 설정
WHERE job_id = 'IT DS';    -- job_id가 'IT DS'인 레코드를 찾음


-- 확인
SELECT * FROM jobs;



-- jobs 테이블에서 업데이트된 직업 정보를 확인
SELECT * FROM jobs  -- jobs 테이블의 모든 열을 선택
WHERE job_id = 'IT QA';  -- job_id가 'IT QA'인 레코드를 찾음


/*

DELETE
테이블의 데이터를 삭제

DELETE [FROM] 테이블
[WHERE 조건식];


*/

-- country_id가 'KP'인 국가를 삭제
DELETE
FROM countries   -- countries 테이블에서 삭제
WHERE country_id = 'KP';  -- country_id가 'KP'인 레코드를 찾음




-- country_id가 'KR'인 국가를 삭제
DELETE
FROM countries  -- countries 테이블에서 삭제
WHERE country_id = 'KR';   -- country_id가 'KR'인 레코드를 찾음



-- department_id가 280인 부서를 삭제
DELETE
FROM departments   -- departments 테이블에서 삭제
WHERE department_id = 280;   -- department_id가 280인 레코드를 찾음




-- department_id가 290인 부서를 삭제
DELETE
FROM departments
WHERE department_id = 290;




-- job_id가 'IT QA'인 직업을 삭제
DELETE
FROM jobs
WHERE job_id = 'IT QA';



-- job_id가 'IT DA'인 직업을 삭제
DELETE
FROM jobs
WHERE job_id = 'IT DA';





commit;




