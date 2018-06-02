 
-----------DML - CHAPTER 9----------------------------------
-----------------------------------------------------------
CREATE TABLE emp
(ID number(3),
NAME varchar2(25),
HIRE_DATE DATE default sysdate,
SALARY number(8,2));

----INSERT (8-4)

INSERT INTO emp
VALUES (1 , 'kipi' , '01-JAN-2007' , 5000) ;

SELECT * FROM emp ;

INSERT INTO emp
VALUES ('cruvi' , 2 , sysdate , 5000) ;

INSERT INTO emp
VALUES (2 , 'cruvi'  , sysdate ) 

INSERT INTO emp
VALUES (2 , 'cruvi'  , sysdate , ) 

INSERT INTO emp
VALUES (2 , 'cruvi'  , sysdate ,, ) 


INSERT INTO emp
VALUES (2 , 'cruvi'  , sysdate , 8000 ) 

SELECT * FROM emp ;

INSERT INTO emp
VALUES (3 , 'ugi' , ' ' , 8000);

---insert row with null value (8-7)

INSERT INTO emp
VALUES (3 , 'ugi' , NULL , 8000)

SELECT * FROM emp ;

INSERT INTO emp
VALUES (4, 'bentz' , , 9000) ;


INSERT INTO emp
VALUES (4, 'bentz' , DEFAULT , 9000) 

SELECT * FROM emp ;

INSERT INTO emp
VALUES (4 , 'arik' , sysdate , 6500);

SELECT * FROM emp ;

---insert special value (8-8)

INSERT INTO emp (id , name , hire_date , salary)
VALUES (5 , 'cermit' , DEFAULT , 6700) ;

INSERT INTO emp (name , id , salary , hire_date)
VALUES ('uza' , 6 , 4400 ,sysdate) ;

SELECT * FROM emp ;

INSERT INTO emp (id)
VALUES (7) ;

SELECT * FROM emp ;

---Creating A script (8-10)

INSERT INTO emp (ID , NAME , hire_date , salary)
VALUES (&id_n, &name, &hire_date, & salary);

SET VERIFY OFF

SET VERIFY ON

----copy rows from another table (8-11)

INSERT INTO emp
SELECT employee_id , last_name , hire_date , salary
FROM employees
WHERE department_id = 90 ;

SELECT * FROM emp ;

INSERT INTO emp
SELECT employee_id , last_name , hire_date , salary
FROM employees
WHERE department_id = 50 ;

INSERT INTO emp (id , name )
SELECT employee_id , last_name 
FROM employees
WHERE department_id = 80 

SELECT * FROM emp


INSERT INTO emp 
SELECT employee_id , last_name , hire_date , 7000
FROM employees
WHERE department_id = 80

SELECT * FROM emp ;

INSERT INTO emp
SELECT employee_id , last_name , DEFAULT , 7000
FROM employees
WHERE department_id = 80

SELECT employee_id , last_name , hire_date , 7000
FROM employees
WHERE department_id = 80 ;

SELECT employee_id , last_name , DEFAULT , 7000
FROM employees
WHERE department_id = 80 ;

INSERT INTO emp
SELECT employee_id , last_name , hire_date , 7000
FROM employees
WHERE department_id = 80
 
INSERT INTO emp
SELECT employee_id , last_name , NULL , 7000
FROM employees
WHERE department_id = 80

SELECT * FROM emp ;

INSERT INTO emp
SELECT employee_id , last_name , sysdate , 7000
FROM employees
WHERE department_id = 80

SELECT * FROM emp ;

----Update (8-13)
UPDATE emp
SET salary = 6000

UPDATE emp
SET salary = 10000
WHERE name = 'uza' ;

SELECT * FROM emp ;

UPDATE emp
SET salary = 17000 , name = 'Ms uza'
WHERE name = 'uza' ;

SELECT * FROM emp ;

UPDATE emp
SET salary = (SELECT salary FROM employees WHERE employee_id = 100)
WHERE name = 'kipi' ;

SELECT * FROM emp ;

UPDATE emp
SET salary = (SELECT salary FROM employees WHERE employee_id = 100)
WHERE name = 'kipi'

UPDATE emp
SET salary = (SELECT salary FROM employees WHERE employee_id = 104)
WHERE name = 'kipi'

SELECT * FROM emp ;

UPDATE emp
SET name = INITCAP(name) ;

SELECT * FROM emp ;

----Deleting rows from a table (8-17)

DELETE FROM emp
WHERE id = 176 ;

SELECT * FROM emp ;


----Transaction Management (8-24)

COMMIT ;

DELETE FROM emp

INSERT INTO emp
SELECT employee_id , last_name , hire_date , salary
FROM employees ;

SELECT * FROM emp ;

UPDATE emp
SET salary = 0 ;

SELECT * FROM emp ;

ROLLBACK ;

SELECT * FROM emp ;

----Controlling transaction (8-27)

UPDATE emp
SET name = a ;

UPDATE emp
SET name = 'a' 

SAVEPOINT A ;

UPDATE emp
SET name = 'b' ;

SAVEPOINT B ;

UPDATE emp
SET name = 'c' ;

SAVEPOINT C ;

SELECT * FROM emp ;

ROLLBACK TO SAVEPOINT B ;

SELECT * FROM emp ;

ROLLBACK TO SAVEPOINT A ;

SELECT * FROM emp ;

ROLLBACK TO SAVEPOINT C ;
