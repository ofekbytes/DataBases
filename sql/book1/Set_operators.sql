---SET OPERATORS

CREATE TABLE a
(a_id NUMBER(2));


INSERT INTO a
VALUES (1);


INSERT INTO a
VALUES (2);


INSERT INTO a
VALUES (3);

SELECT * FROM A



CREATE TABLE b
(b_id NUMBER(2));


INSERT INTO b
VALUES (2);


INSERT INTO b
VALUES (3);


INSERT INTO b
VALUES (4);

SELECT * FROM b


SELECT * FROM A
union
SELECT * FROM b



SELECT * FROM A
union ALL
SELECT * FROM b


SELECT * FROM A
INTERSECT
SELECT * FROM b


SELECT * FROM A
MINUS
SELECT * FROM b;



SELECT * FROM b
MINUS
SELECT * FROM a;



SELECT * FROM A
MINUS
SELECT * FROM b
UNION
SELECT * FROM b
MINUS
SELECT * FROM a;



(SELECT * FROM A
MINUS
SELECT * FROM b)
UNION
(SELECT * FROM b
MINUS
SELECT * FROM a);


SELECT * FROM job_history

SELECT * FROM employees



SELECT employee_id
FROM employees
UNION
select employee_id
FROM job_history
ORDER BY 1



SELECT employee_id
FROM employees
UNION ALL
select employee_id
FROM job_history
ORDER BY 1


SELECT employee_id, job_id
FROM employees
UNION
select employee_id
FROM job_history
ORDER BY 1


SELECT employee_id, job_id
FROM employees
UNION
select employee_id, JOB_ID
FROM job_history
ORDER BY 1




SELECT employee_id, job_id,NULL,hire_date, 'e' 
FROM employees
UNION
select employee_id, JOB_ID, start_date,end_date,'j'
FROM job_history
ORDER BY 1




SELECT employee_id
FROM employees
INTERSECT
select employee_id
FROM job_history
ORDER BY 1



SELECT employee_id, job_id,'E'
FROM employees
UNION ALL
select employee_id, JOB_ID,'J'
FROM job_history
ORDER BY 1

SELECT employee_id, JOB_ID
FROM employees
INTERSECT
select employee_id,JOB_ID
FROM job_history
ORDER BY 1


SELECT employee_id, JOB_ID
FROM employees
INTERSECT
select employee_id,JOB_ID
FROM job_history
ORDER BY 1




SELECT employee_id
FROM employees
MINUS
select employee_id
FROM job_history
ORDER BY 1



SELECT employee_id, JOB_ID
FROM employees
MINUS
select employee_id,JOB_ID
FROM job_history
ORDER BY 1



SELECT employee_id, last_name,job_id,NULL,hire_date, 'e' 
FROM employees
UNION
select employee_id, NULL,JOB_ID, start_date,end_date,'j'
FROM job_history
ORDER BY 1


SELECT employee_id, last_name, job_id  ,null,null,'e'
FROM employees
where employee_id IN(SELECT employee_id
                                                FROM job_history)
union
select employee_id, null, job_id, start_date , end_date,'j'
 FROM job_history
 
 
 
 
 SELECT *
FROM employees
where employee_id not IN(SELECT employee_id
                                                FROM job_history)
 
 
 
 SELECT employee_id, job_id
 FROM employees
 MINUS
 select employee_id,job_id
 from job_history
 order by 1
 
 
 
 
 
  SELECT employee_id, job_id
 FROM employees
 --order by 1
 MINUS
 select employee_id,job_id
 from job_history
 order by 1
 
   SELECT employee_id, job_id
 FROM employees
 where employee_id in (176,200);
 
 
    SELECT employee_id, job_id
 FROM job_history
 where employee_id in (176,200);
 
 
 
 