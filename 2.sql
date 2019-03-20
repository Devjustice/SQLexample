CREATE VIEW v_emp(emp_id,first_name,job_id,hiredate,dept_id)AS
SELECT employee_id,first_name,job_id,hire_date,department_id
FROM employees
WHERE job_id ='ST_CLERK';

SELECT * FROM v_emp;
CREATE VIEW v_emp1(emp_id,first_name,job_id,hiredate,dept_id)AS
SELECT employee_id,first_name,job_id,hire_date,department_id
FROM employees
WHERE job_id ='ST_CLERK';



DROP VIEW v_emp1;


CREATE OR REPLACE VIEW v_emp(emp_id,first_name,job_id,hiredate,dept_id)AS
SELECT employee_id,first_name,job_id,hire_date,department_id
FROM employees
WHERE job_id ='ST_CLERK';


CREATE OR REPLACE VIEW v_emp3(emp_id,first_name,job_id,hiredate,dept_id)AS
SELECT NVL(employee_id, NULL),NVL(first_name,NULL),job_id,hire_date,department_id
FROM employees
WHERE job_id ='ST_CLERK';



DESC v_emp3;




UPDATE v_emp3 SET first_name='kim'
WHERE first_name='Julia';



UPDATE v_emp SET first_name='kim'
WHERE first_name='Julia';

CREATE VIEW v_emp_salary(emp_id,last_name,annual_sal)AS
SELECT employee_id,last_name,(salary+nvl(commission_pct,0))*12 FROM employees;


SELECT * FROM v_emp_salary;


CREATE VIEW v_emp_readonly(emp_id,last_name,annual_sal)AS
SELECT employee_id,last_name,(salary+nvl(commission_pct,0))*12 FROM employees
WITH READ ONLY;

DESC v_emp_readonly;


SELECT * FROM v_emp_readonly;

UPDATE v_emp_readonly SET last_name = 'Kim' WHERE last_name='Grant';--읽기 전용 뷰에서는 DML 작업을 수행할 수 없습니다



CREATE OR REPLACE  VIEW  v_samp1 AS SELECT employee_id, last_name, department_id, hire_date FROM employees
WHERE (salary+nvl(commission_pct,0))*12>40000 AND department_id =50
AND department_id='ST_CLERK' AND sysdate - 365*5>hire_date;


SELECT * FROM v_samp1;


CREATE VIEW 사원(사번,이름,부서번호,입사일)AS 
SELECT employee_id, fisrt_name||''||last_name,department_id,hire_date FROM employees 
WHERE department_id=50;

SELECT * FROM 사원;

CREATE VIEW v_join(사번,이름,부서번호,부서명,입사일)AS
SELECT emp.employee_id, emp.first_name||''||emp.last_name,emp.department_id,dept.department_name,emp.hire_date FROM
employees emp,departments dept WHERE emp.department_id=dept.department_id;




SELECT * FROM v_join;

