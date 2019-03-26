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
 
 insert into sample(deptNo, deptName, deploc, depManager)values(10,'기획실','서울','홍길동');
 insert into sample values(20,'전산실','부산','김길동');
insert into sample values(30,'영업부','광주',null);
update sample set depNo=50
where deptNo=30;
update sample set deptNo=50
where deptNo=30;
update sample set DEPLOC='인천'
where deptName='영업부';
delete sample
where DEPTNAME ='영업부';
delete sample;
commit;
rollback;
select * from sample;