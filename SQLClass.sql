CREATE TABLE PERSON(ID NUMBER, FIRST_NAME VARCHAR(90), AGE NUMBER);

DESC PERSON;

INSERT INTO PERSON VALUES(1, 'VIJAY', 22);

INSERT INTO PERSON VALUES(2, 'MANU', 25);
INSERT INTO PERSON VALUES(3, 'ARUN', 26);
INSERT INTO PERSON VALUES(4, 'KUMAR', 28);
INSERT INTO PERSON VALUES(5, 'KIRAN', 25);
INSERT INTO PERSON VALUES(6, 'JYOTHI', 20);
INSERT INTO PERSON VALUES(7, 'RAMU', 35);

SELECT * FROM PERSON;

INSERT INTO PERSON VALUES(7, 'RAMU', 35);

INSERT INTO PERSON(ID, FIRST_NAME) VALUES(8, 'MURALI');

INSERT INTO PERSON(ID, AGE) VALUES(9, 45);

INSERT INTO PERSON(FIRST_NAME, AGE) VALUES('MOHAN', 45);

SELECT * FROM PERSON;

INSERT INTO PERSON(AGE) VALUES(45);

INSERT INTO PERSON(AGE, ID) VALUES(45, 12);

INSERT INTO PERSON(AGE, ID, FIRST_NAME) VALUES(48, 13, 'RAGHU');

INSERT INTO PERSON(AGE,FIRST_NAME, ID) VALUES(48,'RUPA', 14);

SELECT * FROM PERSON;

UPDATE PERSON SET FIRST_NAME = 'RAVI' WHERE ID = 5;

UPDATE PERSON SET FIRST_NAME = 'RAMANA', AGE = 33 WHERE ID = 6;

UPDATE PERSON SET ID = 25, AGE = 38 WHERE ID = 7;

UPDATE PERSON SET AGE = 28 WHERE AGE IS NULL;

UPDATE PERSON SET AGE = 38 WHERE FIRST_NAME IS NOT NULL;

UPDATE PERSON SET FIRST_NAME = 'ANU' WHERE ID > 4;

SELECT * FROM PERSON;
UPDATE PERSON SET AGE = 22, ID = 10 WHERE ID <= 7;

UPDATE PERSON SET AGE = 42, ID = 15;

DELETE FROM PERSON WHERE ID = 6;

DELETE FROM PERSON WHERE FIRST_NAME = 'KUMAR';

DELETE FROM PERSON WHERE FIRST_NAME = 'ANU';

SELECT * FROM PERSON;

DELETE FROM PERSON;

CREATE TABLE EMPLOYEE(ID NUMBER, FIRST_NAME VARCHAR2(90),
LAST_NAME VARCHAR2(90), AGE NUMBER, SALARY NUMBER, EMAIL VARCHAR2(90));

INSERT INTO EMPLOYEE VALUES(1, 'RAMU', 'BTM', 22, 4000, 'R@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(2, 'RAVI', 'RAO', 24, 3000, 'RA@GMAIL.IN');
INSERT INTO EMPLOYEE VALUES(3, 'MANU', 'BTM', 23, 5000, 'M@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(4, 'MURALI', 'RAO', 26, 55000, 'MU@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(5, 'PAVAN', 'KUMAR', 28, 55000, 'PA@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(6, 'ANU', 'JP', 21, 6000, 'ANU@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(7, 'SWETHA', 'RAO', 29, 56000, 'SW@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(8, 'SUNITHA', 'JD', 32, 7000, 'SU@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(9, 'KIRAN', 'RAO', 32, 7000, 'KI@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(10, 'RAGHU', 'JD', 25, 2000, 'MU@GMAIL.COM');

SELECT * FROM EMPLOYEE;

SELECT * FROM EMPLOYEE WHERE ID = 5;

SELECT * FROM EMPLOYEE WHERE ID > 5;

SELECT * FROM EMPLOYEE WHERE AGE BETWEEN 22 AND 28;

SELECT * FROM EMPLOYEE WHERE AGE NOT BETWEEN 22 AND 28;

SELECT * FROM EMPLOYEE WHERE SALARY IN(4000, 5500, 7000); 

SELECT * FROM EMPLOYEE WHERE SALARY = 5500;

SELECT * FROM EMPLOYEE WHERE SALARY NOT IN(4000, 5500, 7000);

SELECT * FROM EMPLOYEE WHERE FIRST_NAME LIKE '%R%'

SELECT AGE, FIRST_NAME FROM EMPLOYEE;

SELECT AGE, FIRST_NAME, EMAIL FROM EMPLOYEE;

SELECT FIRST_NAME AS MYNAME, AGE, LAST_NAME AS MYLNAME FROM EMPLOYEE;

SELECT FIRST_NAME MYNAME, AGE, LAST_NAME MYLNAME FROM EMPLOYEE;

SELECT COUNT(*) FROM EMPLOYEE;

SELECT COUNT(*) AS RECORDS_COUNT FROM EMPLOYEE;

SELECT COUNT(*) AS "RECORDS COUNT" FROM EMPLOYEE;

SELECT COUNT(*) "RECORDS COUNT" FROM EMPLOYEE;

SELECT * FROM EMPLOYEE;

SELECT COUNT(AGE) "RECORDS COUNT" FROM EMPLOYEE;

UPDATE EMPLOYEE SET AGE = NULL WHERE ID = 2;

SELECT COUNT(AGE) "RECORDS COUNT" FROM EMPLOYEE;

SELECT COUNT(LAST_NAME) "RECORDS COUNT" FROM EMPLOYEE;

SELECT MAX(SALARY) FROM EMPLOYEE;

SELECT MIN(SALARY) FROM EMPLOYEE;

SELECT MAX(AGE) FROM EMPLOYEE;

SELECT MIN(AGE) FROM EMPLOYEE;

SELECT MAX(SALARY) AS "MAX SALARY" FROM EMPLOYEE;

SELECT MAX(SALARY) "MAX SALARY" FROM EMPLOYEE;

SELECT AVG(AGE) "AVG AGE" FROM EMPLOYEE;

SELECT AVG(SALARY) "AVG SALARY" FROM EMPLOYEE;

SELECT MAX(FIRST_NAME) FROM EMPLOYEE;

SELECT MIN(FIRST_NAME) FROM EMPLOYEE;

SELECT * FROM EMPLOYEE ORDER BY FIRST_NAME;

SELECT * FROM EMPLOYEE ORDER BY AGE;

SELECT * FROM EMPLOYEE ORDER BY AGE, SALARY;


//SELECT FIRST_NAME, MAX(SALARY) FROM EMPLOYEE;

SELECT * FROM EMPLOYEE;

                                                  //56000  
SELECT FIRST_NAME FROM EMPLOYEE WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEE);

SELECT FIRST_NAME FROM EMPLOYEE WHERE AGE = (SELECT MAX(AGE) FROM EMPLOYEE);

SELECT FIRST_NAME FROM EMPLOYEE WHERE AGE = (SELECT MIN(AGE) FROM EMPLOYEE);

SELECT MAX(SALARY) FROM EMPLOYEE WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEE);


SELECT MAX(SALARY) FROM EMPLOYEE WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEE WHERE
SALARY < (SELECT MAX(SALARY) FROM EMPLOYEE));

//7000 <(55000)<(56000)

SELECT FIRST_NAME FROM EMPLOYEE WHERE SALARY =
(SELECT MAX(SALARY) FROM EMPLOYEE WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEE WHERE
SALARY < (SELECT MAX(SALARY) FROM EMPLOYEE)));


SELECT FIRST_NAME FROM EMPLOYEE WHERE SALARY = 
(SELECT MIN(SALARY) FROM EMPLOYEE WHERE SALARY > (SELECT MIN(SALARY) FROM EMPLOYEE WHERE
SALARY > (SELECT MIN(SALARY) FROM EMPLOYEE)));


// RAMU = 4000 > 3000 > 2000


SELECT ID, FIRST_NAME, LAST_NAME, AGE, SALARY, EMAIL, RANK() OVER (ORDER BY SALARY DESC)
RANK FROM EMPLOYEE;

SELECT ID, FIRST_NAME, LAST_NAME, AGE, SALARY, EMAIL, RANK() OVER (ORDER BY SALARY DESC)
RANKED FROM EMPLOYEE;

SELECT * FROM (SELECT ID, FIRST_NAME, LAST_NAME, AGE, SALARY, EMAIL, RANK() OVER
(ORDER BY SALARY) RANK FROM EMPLOYEE);

SELECT * FROM (SELECT ID, FIRST_NAME, LAST_NAME, AGE, SALARY, EMAIL, RANK() OVER
(ORDER BY SALARY DESC) RANK FROM EMPLOYEE) WHERE RANK = 7;


SELECT * FROM EMPLOYEE;


INSERT INTO EMPLOYEE VALUES(1, 'RAMU', 'BTM', 22, 4000, 'R@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(2, 'RAVI', 'RAO', 24, 3000, 'RA@GMAIL.IN');
INSERT INTO EMPLOYEE VALUES(3, 'MANU', 'BTM', 23, 5000, 'M@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(4, 'MURALI', 'RAO', 26, 55000, 'MU@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(5, 'PAVAN', 'KUMAR', 28, 55000, 'PA@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(6, 'ANU', 'JP', 21, 6000, 'ANU@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(7, 'SWETHA', 'RAO', 29, 56000, 'SW@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(8, 'SUNITHA', 'JD', 32, 7000, 'SU@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(9, 'KIRAN', 'RAO', 32, 7000, 'KI@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(10, 'RAGHU', 'JD', 25, 2000, 'MU@GMAIL.COM');

INSERT INTO EMPLOYEE VALUES(1, 'RAMU', 'BTM', 22, 4000, 'R@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(2, 'RAVI', 'RAO', 24, 3000, 'RA@GMAIL.IN');
INSERT INTO EMPLOYEE VALUES(3, 'MANU', 'BTM', 23, 5000, 'M@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(4, 'MURALI', 'RAO', 26, 55000, 'MU@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(5, 'PAVAN', 'KUMAR', 28, 55000, 'PA@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(6, 'ANU', 'JP', 21, 6000, 'ANU@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(7, 'SWETHA', 'RAO', 29, 56000, 'SW@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(8, 'SUNITHA', 'JD', 32, 7000, 'SU@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(9, 'KIRAN', 'RAO', 32, 7000, 'KI@GMAIL.COM');
INSERT INTO EMPLOYEE VALUES(10, 'RAGHU', 'JD', 25, 2000, 'MU@GMAIL.COM');

SELECT * FROM EMPLOYEE;

//PAGINATION

SELECT ID, FIRST_NAME, LAST_NAME, AGE, EMAIL, SALARY, ROWNUM FROM EMPLOYEE;

SELECT * FROM EMPLOYEE WHERE ROWNUM BETWEEN 10 AND 20;

SELECT * FROM (SELECT ID, FIRST_NAME, LAST_NAME, AGE, EMAIL, SALARY, ROWNUM AS ROWNUMBER 
FROM EMPLOYEE) WHERE ROWNUM <= 10;

SELECT * FROM (SELECT ID, FIRST_NAME, LAST_NAME, AGE, EMAIL, SALARY, ROWNUM AS ROWNUMBER 
FROM EMPLOYEE) WHERE ROWNUMBER BETWEEN 11 AND 20;

SELECT * FROM (SELECT ID, FIRST_NAME, LAST_NAME, AGE, EMAIL, SALARY, ROWNUM AS ROWNUMBER 
FROM EMPLOYEE) WHERE ROWNUMBER BETWEEN 21 AND 30;

SELECT * FROM (SELECT ID, FIRST_NAME, LAST_NAME, AGE, EMAIL, SALARY, ROWNUM AS ROWNUMBER 
FROM EMPLOYEE);

SELECT DISTINCT ID, FIRST_NAME, LAST_NAME, AGE, EMAIL, SALARY FROM EMPLOYEE;

SELECT * FROM EMPLOYEE;

SELECT * FROM EMPLOYEE GROUP BY ID, FIRST_NAME, LAST_NAME, AGE, EMAIL, SALARY;




INSERT INTO EMPLOYEE VALUES(2, 'RAVI', 'RAO', 24, 3000, 'RA@GMAIL.IN');

UPDATE EMPLOYEE SET AGE = 27 WHERE AGE IS NULL;

DELETE FROM EMPLOYEE WHERE AGE = 27;

SELECT ID, FIRST_NAME, LAST_NAME, AGE, EMAIL, SALARY, ROWID FROM EMPLOYEE; 

SELECT MIN(ROWID) FROM EMPLOYEE;

SELECT MAX(ROWID) FROM EMPLOYEE;



DELETE FROM EMPLOYEE WHERE ROWID NOT IN
(SELECT MIN(ROWID) FROM EMPLOYEE GROUP BY  ID, FIRST_NAME, LAST_NAME, AGE, EMAIL, SALARY);

SELECT * FROM EMPLOYEE;

CREATE TABLE TAB1(ID NUMBER, NAME VARCHAR2(90), AGE NUMBER);

INSERT INTO TAB1(ID) VALUES(1);

SELECT * FROM TAB1;

INSERT INTO TAB1(ID, AGE) VALUES(2, 24);

INSERT INTO TAB1(NAME) VALUES('MANU');

INSERT INTO TAB1(AGE) VALUES(25);

CREATE TABLE TAB2(ID NUMBER, NAME VARCHAR2(90) NOT NULL, AGE NUMBER);

DESC TAB2;

INSERT INTO TAB2(ID) VALUES(1);

INSERT INTO TAB2(ID, NAME) VALUES(2, 'ABC');

SELECT * FROM TAB2;

INSERT INTO TAB2(AGE) VALUES(22);

INSERT INTO TAB2(NAME) VALUES('XYZ');


CREATE TABLE TAB3(ID NUMBER NOT NULL, NAME VARCHAR2(90) NOT NULL, AGE NUMBER);

DESC TAB3;

INSERT INTO TAB3(ID) VALUES(1);

INSERT INTO TAB3 (ID, NAME) VALUES(2, 'ABC');

INSERT INTO TAB3(NAME, AGE) VALUES('XYZ', 33);

INSERT INTO TAB3(NAME) VALUES('AAA');

INSERT INTO TAB3(AGE) VALUES(11);

CREATE TABLE TAB4(ID NUMBER, NAME VARCHAR2(90), AGE NUMBER);

INSERT INTO TAB4(ID, NAME) VALUES(1, 'MANU');
INSERT INTO TAB4(ID, NAME) VALUES(1, 'MANU');

SELECT * FROM TAB4

INSERT INTO TAB4(ID, NAME, AGE) VALUES(2, 'RAMU', 34);
INSERT INTO TAB4(ID, NAME, AGE) VALUES(2, 'RAMU', 34);

CREATE TABLE TAB5(ID NUMBER, NAME VARCHAR2(90) UNIQUE, AGE NUMBER);

INSERT INTO TAB5(ID, NAME) VALUES(1, 'MANU');

INSERT INTO TAB5(ID, NAME) VALUES(1, 'MANU');

INSERT INTO TAB5(ID, NAME, AGE) VALUES(2, 'RAMU', 22);

INSERT INTO TAB5(ID, NAME, AGE) VALUES(2, 'RAMU', 22);

SELECT * FROM TAB5;

INSERT INTO TAB5(NAME, AGE) VALUES('RAMU', 22);

INSERT INTO TAB5(ID, AGE) VALUES(1, 22);

INSERT INTO TAB5(ID, AGE) VALUES(1, 22);

CREATE TABLE TAB6(ID NUMBER, NAME VARCHAR2(90) UNIQUE, AGE NUMBER UNIQUE);

INSERT INTO TAB6(ID, NAME) VALUES(1, 'MANU');

INSERT INTO TAB6(ID, NAME) VALUES(1, 'MANU');

INSERT INTO TAB6(ID, NAME, AGE) VALUES(2, 'RAMU', 22);

INSERT INTO TAB6(ID, NAME, AGE) VALUES(2, 'RAMU', 22);

INSERT INTO TAB6(ID, AGE) VALUES(2, 22);

INSERT INTO TAB6(ID) VALUES(5);

INSERT INTO TAB6(AGE) VALUES(25);

SELECT * FROM TAB6;

CREATE TABLE TAB7(ID NUMBER, NAME VARCHAR2(90), AGE NUMBER, CONSTRAINT TAB7_UK1 UNIQUE(NAME),
CONSTRAINT TAB7_UK2 UNIQUE(AGE));

DESC TAB7;

INSERT INTO TAB7(ID, NAME) VALUES(1, 'MANU');

INSERT INTO TAB7(ID, NAME) VALUES(1, 'MANU');

INSERT INTO TAB7(ID, NAME, AGE) VALUES(2, 'RAMU', 22);

INSERT INTO TAB7(ID, NAME, AGE) VALUES(2, 'RAMU', 22);

INSERT INTO TAB7(NAME, AGE) VALUES('RAMU', 22);

INSERT INTO TAB7(ID, AGE) VALUES(2, 22);

INSERT INTO TAB7(ID) VALUES(2);

SELECT * FROM TAB7;

INSERT INTO TAB7(NAME, AGE) VALUES('ABC', 28);

CREATE TABLE TAB8(ID NUMBER, NAME VARCHAR2(90), AGE NUMBER, CONSTRAINT TAB8_UK1 UNIQUE
(NAME, AGE));

INSERT INTO TAB8(ID, NAME) VALUES(1, 'MANU');

INSERT INTO TAB8(ID, NAME) VALUES(1, 'MANU');

SELECT * FROM TAB8;

INSERT INTO TAB8(ID, NAME, AGE) VALUES(2, 'RAMU', 22);

INSERT INTO TAB8(ID, NAME, AGE) VALUES(2, 'RAMU', 22);

INSERT INTO TAB8(ID, NAME, AGE) VALUES(2, 'RAMU', 23);


INSERT INTO TAB8(ID, NAME, AGE) VALUES(2, 'ANU', 23);

SELECT * FROM TAB8;

INSERT INTO TAB8(ID, NAME, AGE) VALUES(2, 'ANU', 24);

INSERT INTO TAB8(NAME, AGE) VALUES('RAMU', 22);

INSERT INTO TAB8(ID, AGE) VALUES(5, 22);

SELECT * FROM TAB8;

INSERT INTO TAB8(ID, AGE) VALUES(5, 22);


INSERT INTO TAB8(ID) VALUES(5);
INSERT INTO TAB8(ID) VALUES(5);


CREATE TABLE TAB9(ID NUMBER, NAME VARCHAR2(90) PRIMARY KEY, AGE NUMBER);

INSERT INTO TAB9 (ID, NAME) VALUES(1, 'MANU');

INSERT INTO TAB9 (ID, NAME) VALUES(1, 'MANU');

INSERT INTO TAB9 (ID, AGE) VALUES(1, 22);

INSERT INTO TAB9 (ID, NAME, AGE) VALUES(2, 'RAMU', 22);

INSERT INTO TAB9 (ID, NAME, AGE) VALUES(2, 'RAMU', 22);

INSERT INTO TAB9 (NAME) VALUES('ANU');

SELECT * FROM TAB9;


CREATE TABLE TAB10(ID NUMBER, NAME VARCHAR2(90) PRIMARY KEY, AGE NUMBER PRIMARY KEY);

CREATE TABLE TAB11(ID NUMBER, NAME VARCHAR2(90), AGE NUMBER, CONSTRAINT TAB11_PK1 PRIMARY KEY
(AGE));

INSERT INTO TAB11(ID, NAME) VALUES(1, 'MANU');

INSERT INTO TAB11(ID, NAME, AGE) VALUES(2, 'RAMU', 22);

INSERT INTO TAB11(ID, NAME, AGE) VALUES(2, 'RAMU', 22);

INSERT INTO TAB11(ID, NAME, AGE) VALUES(2, 'RAMU', 28);

INSERT INTO TAB11(ID, AGE) VALUES(1, 22);

INSERT INTO TAB11(ID, AGE) VALUES(1, 28);

INSERT INTO TAB11(NAME) VALUES('VIJAY');

SELECT * FROM TAB11;

CREATE













































