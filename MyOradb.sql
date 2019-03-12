SELECT * FROM TAB;
SELECT * FROM EMPLOYEES;
--직원 테이블에서 성이 스미스인  회사원을 찾으세요
SELECT employee_id, last_name from EMPLOYEES where LAST_NAME ='Smith';
--직원 테이블을 설명하세요
desc employees;
--Smith의 아이디와 연봉을 직원테이블에서 추출하세요
SELECT * FROM EMPLOYEES;
SELECT employee_id, salary from employees where last_name='Smith';
--Smith가 이름인 사람의 첫째이름과 연봉, 직원아이디를 추출하세요
SELECT employee_id, FIRST_NAME, salary FROM employees WHERE last_name='Smith';
--직원아이디가 ID이고  연봉이 SAL인 튜플을 추출하세요
SELECT employee_id AS "ID", salary AS "SAL" FROM Employees;
--직원아이디 튜플을 추출하세요
SELECT distinct job_id FROM Employees;
--성과 이름을 추출하고 연봉이 5000불 이상인 데이터를 추출하세요
SELECT First_name, Last_name, salary FROM Employees WHERE salary >=5000;
--04년 1월 1일 이후 고용된 직원의 성과 이름 ,고용일 을 추출하세요
SELECT First_name, Last_name, hire_date FROM Employees WHERE Hire_Date >= '04/01/01';
--성과 이름을 추출하고 직원 아이디와 부서아이디를 테이블에서 부서 아이디가 50이고 직업아이디가 'SH_CLERK'인 데이터를 추출하시오
SELECT First_name, Last_name, job_id, department_id FROM Employees WHERE department_id =50 AND job_id ='SH_CLERK';
--성과 이름 을 추출하고 메니저 아이디가 50이거나 부서아이디가 100인 데이터를 추출하시오 
SELECT First_name, Last_name, manager_id, department_id FROM Employees WHERE department_id =50 or Manager_Id =100;

-----------------------------NOT-----------------------------------
--부서 아이디가 50이 아닌 성과 이름 부서명 데이터를 추출하시오
SELECT First_name, Last_name, department_id FROM Employees WHERE not(department_id=50);
SELECT First_name, Last_name, department_id FROM Employees WHERE department_id <>50;

-------------------------------salary 4000~8000-----------------------------------
--성과 이름을 추출하고 연봉이 4000보다크고 8000보다 작은 데이터를 추출하세요
SELECT First_name, Last_name,salary FROM Employees WHERE Salary >=4000 AND Salary <=8000;
SELECT First_name, Last_name,salary FROM Employees WHERE Salary BETWEEN 4000 AND 8000;
--성과 이름을 추출하고 연봉이 6500이거나 7700이거나 13000인 데이터를 추출하세요
SELECT First_name, Last_name,salary FROM Employees WHERE Salary =6500 OR salary=7700 OR salary=13000;
SELECT First_name, Last_name,salary FROM Employees WHERE Salary IN(6500,7700,13000);
---------------------------------------------------------------------------------
--성을추출하고  이름이 D로시작하는 들어간 사람의 데이터를 추출하세요
SELECT First_name, Last_name FROM Employees WHERE First_name LIKE 'D%';
--성을추출하고  이름이 d로시작하는 들어간 사람의 데이터를 추출하세요
SELECT First_name, Last_name FROM Employees WHERE First_name LIKE 'd%';
--성을추출하고  이름의 세번째 글자가 a로시작하는 들어간 사람의 데이터를 추출하세요
SELECT First_name, Last_name FROM Employees WHERE First_name LIKE '__a%';
--성과 이름과 커미션을 추출하고 커미션이 널값인 데이터를 추출하세요
SELECT First_name, Last_name, commission_pct FROM Employees WHERE COMMISSION_PCT IS NULL;
--성과 이름과 커미션을 추출하고 커미션이 널이아닌 데이터를 추출하세요
SELECT First_name, Last_name, commission_pct FROM Employees WHERE COMMISSION_PCT IS NOT NULL;


---------------------------------오름차순 정렬-------------------------------------
--성을 직원아이디 별로 오름차순 정렬하세요
SELECT Employee_id, last_name FROM Employees ORDER BY Employee_Id;
---------------------------------내름차순 정렬-------------------------------------
--성을 직원아이디를  별로 내름차순 정렬하세요
SELECT Employee_id, last_name FROM Employees ORDER BY Employee_Id desc;