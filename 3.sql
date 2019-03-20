CREATE SEQUENCE seq_serial_no
INCREMENT BY 1
START WITH 100
MAXVALUE 110
MINVALUE 99
CYCLE
CACHE 2;
CREATE TABLE good(
good_no NUMBER(3),
good_name VARCHAR2(10)
);

INSERT INTO good
VALUES(seq_serial_no.nextval,'力前12');
SELECT * FROM good;
INSERT INTO good
VALUES(seq_serial_no.currval, '力前2');
SELECT seq_serial_no.currval FROM dual;
CREATE TABLE good2(good_no NUMBER(3), good_name VARCHAR2(10));


CREATE SEQUENCE seq_serial_no2 INCREMENT BY 1 START WITH 100 MAXVALUE 105 CACHE 2;
INSERT INTO good2 VALUES(seq_serial_no2.nextval,'力前1');
COMMIT;
SELECT * FROM good2;
DROP SEQUENCE seq_serial_no2;





