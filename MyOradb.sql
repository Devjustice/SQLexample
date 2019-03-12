SELECT * FROM TAB;
SELECT * FROM EMPLOYEES;
--���� ���̺��� ���� ���̽���  ȸ����� ã������
SELECT employee_id, last_name from EMPLOYEES where LAST_NAME ='Smith';
--���� ���̺��� �����ϼ���
desc employees;
--Smith�� ���̵�� ������ �������̺��� �����ϼ���
SELECT * FROM EMPLOYEES;
SELECT employee_id, salary from employees where last_name='Smith';
--Smith�� �̸��� ����� ù°�̸��� ����, �������̵� �����ϼ���
SELECT employee_id, FIRST_NAME, salary FROM employees WHERE last_name='Smith';
--�������̵� ID�̰�  ������ SAL�� Ʃ���� �����ϼ���
SELECT employee_id AS "ID", salary AS "SAL" FROM Employees;
--�������̵� Ʃ���� �����ϼ���
SELECT distinct job_id FROM Employees;
--���� �̸��� �����ϰ� ������ 5000�� �̻��� �����͸� �����ϼ���
SELECT First_name, Last_name, salary FROM Employees WHERE salary >=5000;
--04�� 1�� 1�� ���� ���� ������ ���� �̸� ,����� �� �����ϼ���
SELECT First_name, Last_name, hire_date FROM Employees WHERE Hire_Date >= '04/01/01';
--���� �̸��� �����ϰ� ���� ���̵�� �μ����̵� ���̺��� �μ� ���̵� 50�̰� �������̵� 'SH_CLERK'�� �����͸� �����Ͻÿ�
SELECT First_name, Last_name, job_id, department_id FROM Employees WHERE department_id =50 AND job_id ='SH_CLERK';
--���� �̸� �� �����ϰ� �޴��� ���̵� 50�̰ų� �μ����̵� 100�� �����͸� �����Ͻÿ� 
SELECT First_name, Last_name, manager_id, department_id FROM Employees WHERE department_id =50 or Manager_Id =100;

-----------------------------NOT-----------------------------------
--�μ� ���̵� 50�� �ƴ� ���� �̸� �μ��� �����͸� �����Ͻÿ�
SELECT First_name, Last_name, department_id FROM Employees WHERE not(department_id=50);
SELECT First_name, Last_name, department_id FROM Employees WHERE department_id <>50;

-------------------------------salary 4000~8000-----------------------------------
--���� �̸��� �����ϰ� ������ 4000����ũ�� 8000���� ���� �����͸� �����ϼ���
SELECT First_name, Last_name,salary FROM Employees WHERE Salary >=4000 AND Salary <=8000;
SELECT First_name, Last_name,salary FROM Employees WHERE Salary BETWEEN 4000 AND 8000;
--���� �̸��� �����ϰ� ������ 6500�̰ų� 7700�̰ų� 13000�� �����͸� �����ϼ���
SELECT First_name, Last_name,salary FROM Employees WHERE Salary =6500 OR salary=7700 OR salary=13000;
SELECT First_name, Last_name,salary FROM Employees WHERE Salary IN(6500,7700,13000);
---------------------------------------------------------------------------------
--���������ϰ�  �̸��� D�ν����ϴ� �� ����� �����͸� �����ϼ���
SELECT First_name, Last_name FROM Employees WHERE First_name LIKE 'D%';
--���������ϰ�  �̸��� d�ν����ϴ� �� ����� �����͸� �����ϼ���
SELECT First_name, Last_name FROM Employees WHERE First_name LIKE 'd%';
--���������ϰ�  �̸��� ����° ���ڰ� a�ν����ϴ� �� ����� �����͸� �����ϼ���
SELECT First_name, Last_name FROM Employees WHERE First_name LIKE '__a%';
--���� �̸��� Ŀ�̼��� �����ϰ� Ŀ�̼��� �ΰ��� �����͸� �����ϼ���
SELECT First_name, Last_name, commission_pct FROM Employees WHERE COMMISSION_PCT IS NULL;
--���� �̸��� Ŀ�̼��� �����ϰ� Ŀ�̼��� ���̾ƴ� �����͸� �����ϼ���
SELECT First_name, Last_name, commission_pct FROM Employees WHERE COMMISSION_PCT IS NOT NULL;


---------------------------------�������� ����-------------------------------------
--���� �������̵� ���� �������� �����ϼ���
SELECT Employee_id, last_name FROM Employees ORDER BY Employee_Id;
---------------------------------�������� ����-------------------------------------
--���� �������̵�  ���� �������� �����ϼ���
SELECT Employee_id, last_name FROM Employees ORDER BY Employee_Id desc;