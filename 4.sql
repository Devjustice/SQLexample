desc employees;
desc member;
create table employees2(
employee_id number(2),
name varchar(20),salary number(7,2));

create table employees3
 as select *from employees2;
 
 alter table employees2 add(
 
 manager_id varchar(10));
 alter table employee2 drop column manager_id;
 drop table employee2;
 rename menber to member1;
 truncate table employees3;
 select *from employees3;
 truncate table employees3;
 
 create table sample(
 
 deptNo number(20).
 deptName varchar2(15),
 deploc varchar2(15),
 depManager varchar2(10)
 );
 
 insert into sample(deptNo, deptName, deploc, depManager)values(10,'��ȹ��','����','ȫ�浿');
 insert into sample values(20,'�����','�λ�','��浿');
insert into sample values(30,'������','����',null);
update sample set depNo=50
where deptNo=30;
update sample set deptNo=50
where deptNo=30;
update sample set DEPLOC='��õ'
where deptName='������';
delete sample
where DEPTNAME ='������';
delete sample;
commit;
rollback;
select * from sample;