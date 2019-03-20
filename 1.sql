
-/*
NOT NULL 널값이 입력되지 못하게 하는 조건
UNIQUE 중복된 값이 입력되지 못하게 하는 조건
primary key NOT NULL + UNIQUE
foreign key 다른테이블의 컬름을 참조해서 무결성을 검사
check 주어진 값만 허용하는 조건


*/

CREATE TABLE null_test(


col1 VARCHAR2(20) NOT NULL,
col2 VARCHAR2(20) NULL,
col3 VARCHAR2(20)

);
INSERT INTO null_test(col1,col2)
VALUES('aa','bb');
SELECT * FROM null_test;
INSERT INTO null_test(col2,col3)
VALUES ('cc','dd');


CREATE TABLE unique_test(
col1 VARCHAR2(20) UNIQUE NOT NULL,--프라머리키로생성
col2 VARCHAR2(20) UNIQUE,
col3 VARCHAR2(20) NOT NULL,
col4 VARCHAR2(20) NOT NULL,
CONSTRAINTS temp_unique UNIQUE(col3,col4)--제약조건을 줄때 두게를 묶어서 제약함

);
INSERT INTO unique_test(col1,col2,col3,col4)
(VALUES('aa','bb','cc','dd');
);
INSERT INTO unique_test(col1,col2,col3,col4)
(VALUES('a2','b2','c2','d2');
);
SELECT * FROM unique_test;
UPDATE unoque_test
--SET col1='aa'--무결성조건 위배
WHERE col2='b2';

INSERT INTO unique_test(col1,col2,col3,col4)
VALUES('a3','','c3','d3');


INSERT INTO unique_test(col1,col2,col3,col4)
VALUES('a4','','c4','d4');


CREATE TABLE primary_test(

student_id NUMBER(10) PRIMARY KEY, NAME VARCHAR(20)

);

CREATE TABLE primary_test(
student_id NUMBER(10),NAME VARCHAR2(20), CONSTRAINTS studnent_pk PRIMARY KEY(student_id)

);


CREATE TABLE primary_test(
student_id number(10),
NAME VARCHAR2(20)

);


ALTER TABLE primary_test ADD CONSTRAINTS "기본키 이름" PRIMARY KEY(필드명);

--외래키
CREATE TABLE foreign_key(

department_id CONSTRAINTS dept_fk
REFERENCE departments(department_id)
);
CREATE TABLE foreign_key(

department_id CONSTRAINTS dept_fk
FOREIGN KEY(department_id)
REFERENCE departments(department_id)
);
ALTER TABLE foreign_key
ADD CONSTRAINTS dept_fk FOREIGN KEY(department_id)
REFERENCE department(department_id);


--check

CREATE TABLE check_test(
gender VARCHAR2(10)NOT NULL CONSTRAINTS check_sex CHECK(gender IN ('M','F'));



);


CREATE TABLE check_test(
gender VARCHAR2(10)NOT 
NULL CONSTRAINTS check_sex CHECK(gender IN ('남성','여성'));

);
INSERT INTO check_test VALUES('남자');
INSERT INTO check_test VALUES('남성');





