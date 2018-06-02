---Chapter 3 - Scalar Functions


---Characters Functions


SELECT  employee_id, last_name , UPPER(last_name), LOWER(last_name),JOB_ID, INITCAP(job_id)
FROM employees



SELECT  employee_id, last_name , first_name, INITCAP(last_name ||' '||first_name)
FROM employees
WHERE last_name ='KING'




SELECT  employee_id, last_name , first_name, INITCAP(last_name ||' '||first_name)
FROM employees
WHERE UPPER(last_name) ='KING'


SELECT 5+6
from DUAL


DESC employees

desc dual


SELECT SYSDATE
FROM employees


SELECT SYSDATE
FROM DUAL


SELECT 'Hello Worlsd', SUBSTR( 'Hello Worlsd',1,4)
from dual


SELECT 'Hello Worlsd', SUBSTR( 'Hello Worlsd',7,1)
from dual

SELECT 'Hello Worlsd', left( 'Hello Worlsd',4)
from dual


SELECT 'Hello World', SUBSTR( 'Hello World',-4,4)
from dual


SELECT 'Hello World', instr( 'Hello World',' ')
from dual


SELECT 'Hello World', instr( 'Hello World','a')
from dual


SELECT 'Hello World', instr( 'Hello World','l')
from dual

SELECT 'Hello World', instr( 'Hello World','l',3+1)
from dual

SELECT 'Hello World', instr( 'Hello World','l',instr( 'Hello World','l')+1)
from dual



SELECT 'Hello World', instr( 'Hello World','l',3+1+1)
from dual



SELECT 'Hello Worlsd', SUBSTR( 'Hello Worlsd',7,1), INSTR ('Hello Worlsd',' ')+1
from dual


SELECT 'Hello Worlsd', SUBSTR( 'Hello Worlsd',INSTR ('Hello Worlsd',' ')+1,1)
from dual


SELECT  employee_id, last_name , first_name, instr(last_name,'a')
FROM employees


SELECT  employee_id, last_name , first_name---, instr(last_name,'a')
FROM employees
WHERE instr(last_name,'a')=0


SELECT  employee_id, last_name , first_name---, instr(last_name,'a')
FROM employees
WHERE instr(last_name,'a')>0


SELECT  employee_id, last_name , first_name, JOB_ID, SUBSTR(job_id,1,2), INSTR(job_id,'_')
FROM employees



SELECT  employee_id, last_name , first_name, JOB_ID, SUBSTR(job_id,INSTR(job_id,'_')+1)
FROM employees

SELECT  employee_id, last_name , first_name, JOB_ID, SUBSTR(job_id,1,INSTR(job_id,'_')-1), INSTR(job_id,'_')
FROM employees




SELECT  employee_id, last_name , LENGTH(last_name)
FROM employees




SELECT 'Hello World', LENGTH( 'Hello World')
from dual


SELECT  'A'||TRIM( '            Hello                 World                            ')||'A'
from dual


SELECT TRIM( 'S' FROM 'SSSSSSSSB  BSSSSSSSSSS')
from dual


SELECT ASCII(' ')
FROM DUAL

SELECT '55555', LPAD ('55555',10,'*')
from DUAL


SELECT  employee_id, last_name , first_name, JOB_ID, REPLACE(job_id,'_',' ')
FROM employees



---Numeric Functions


SELECT 145.368 , FLOOR(145.968), ROUND(145.368), round(145.368,2), round(145.368,-1)
FROM dual

SELECT 145.368 , TRUNC(145.368), TRUNC(145.368,1), TRUNC(145.368,2), TRUNC(145.368,-1)
FROM dual



SELECT  employee_id, last_name , first_name, FLOOR(salary *commission_pct+salary)
FROM employees
WHERE commission_pct is not null


SELECT  employee_id, last_name , first_name, (SYSDATE-HIRE_DATE)/365, SYSDATE
FROM employees

SELECT SYSDATE
FROM DUAL


SELECT  employee_id, last_name , first_name, TRUNC((SYSDATE-HIRE_DATE)/365,1), SYSDATE
FROM employees


SELECT SYSDATE+1/24
FROM DUAL



SELECT  employee_id, last_name , first_name, MONTHS_BETWEEN(SYSDATE,HIRE_DATE)/12, SYSDATE
FROM employees




SELECT ADD_MONTHS(SYSDATE,3)
FROM DUAL



SELECT LAST_DAY(SYSDATE)+1, ADD_MONTHS(LAST_DAY(SYSDATE)+1,3)
FROM DUAL


SELECT ROUND(SYSDATE+20,'MONTH')
FROM DUAL



SELECT ROUND(SYSDATE,'YEAR')
FROM DUAL


SELECT TRUNC(SYSDATE+20,'MONTH')
FROM DUAL



SELECT TRUNC(SYSDATE,'YEAR')
FROM DUAL



---Convert Functions

SELECT 3+5
FROM DUAL


SELECT 3+'5'
FROM DUAL


SELECT '3'+'5'
FROM DUAL


SELECT '3'+'5A'
FROM DUAL


---TO_NUMBER


SELECT TO_NUMBER('3')+TO_NUMBER('5')
FROM DUAL


SELECT  employee_id, last_name , first_name, salary,TO_CHAR(salary,'$999,999,999.00')
FROM employees


SELECT  employee_id, last_name , first_name, salary,TO_CHAR(salary,'$9,999.00')
FROM employees


SELECT  employee_id, last_name , first_name, salary,TO_CHAR(salary,'$000,000,000.00')
FROM employees


SELECT  employee_id, last_name , first_name, hire_date , TO_CHAR(hire_date,'yyyy/mm/dd')
FROM employees


SELECT  employee_id, last_name , first_name, hire_date , TO_CHAR(hire_date,'yyyy')
FROM employees
WHERE TO_CHAR(hire_date,'yyyy')='1997'

SELECT SYSDATE+1, TO_CHAR(SYSDATE+1/24,'DD-MM-YY HH24:MI:SS')
FROM dual

SELECT  employee_id, last_name , first_name, hire_date , TO_CHAR(hire_date,'DD-MM-YY HH24:MI:SS')
FROM employees


SELECT '06-06-06', TO_DATE('06-06-06 15:36:22','MM-DD-YY hh24:mi:ss')
FROM dual



SELECT 18,000 +2
FROM DUAL


SELECT '18,000' +2
FROM DUAL


SELECT TO_NUMBER('18,000','99,999') +2
FROM DUAL


SELECT '08-JAN-1992' , TO_DATE('08-JAN-1992')
FROM dual



---nvl

SELECT  employee_id, last_name , first_name, salary,commission_pct, NVL(commission_pct,0)
FROM employees



SELECT  employee_id, last_name , first_name, salary,commission_pct, NVL(commission_pct,0)*salary+salary
FROM employees


SELECT *
FROM employees


SELECT  employee_id, last_name , first_name, salary,email, NVL(email,'no_email')
FROM employees
WHERE email IS NULL



---CASE

---SIMPLE CASE

SELECT  employee_id, last_name , first_name, salary,
        CASE salary WHEN 10000 THEN salary *1.1
                                  WHEN 6000 THEN salary *1.06
                                  WHEN 9000 then SALARY *1.09
                                  ELSE salary
        END AS "New Sal"
FROM employees



---SEARCH CASE


SELECT  employee_id, last_name , first_name, salary,
        CASE  WHEN salary <=6000 THEN salary *1.4
                   WHEN salary BETWEEN 5000 AND 10000  THEN salary *1.3
                    WHEN salary >10000 AND COMMISSION_PCT IS NOT NULL  then SALARY *1.2
                     ELSE salary*1.1
        END AS "New Sal"
FROM employees



SELECT  employee_id, last_name , first_name, salary,
        CASE  WHEN salary <=6000 THEN salary *1.4
                   WHEN salary BETWEEN 5000 AND 10000  THEN salary *1.3
                    WHEN salary >10000 AND COMMISSION_PCT IS NOT NULL  then SALARY *1.2
                     ELSE 'NO SAL'
        END AS "New Sal"
FROM employees



SELECT  employee_id, last_name , first_name, salary,
        CASE  WHEN salary <=6000 THEN TO_CHAR(salary *1.4)
                   WHEN salary BETWEEN 5000 AND 10000  THEN TO_CHAR(salary *1.3)
                    WHEN salary >10000 AND COMMISSION_PCT IS NOT NULL  then TO_CHAR(SALARY *1.2)
                     ELSE 'NO SAL'
        END AS "New Sal"
FROM employees


----DECODE

SELECT  employee_id, last_name , first_name, salary,department_id,
        DECODE (department_id , 50 , 5000
                                                          ,60,6000
                                                          ,90,9000,0) AS "BONUS"
FROM employees



SELECT  employee_id, last_name , first_name, salary,department_id,
        DECODE (department_id , 50 , 5000
                                                          ,60,6000
                                                          ,90,9000) AS "BONUS"
FROM employees


SELECT  employee_id, last_name , first_name, salary,department_id,
        DECODE (department_id , 50 , salary +5000
                                                          ,60,salary +6000
                                                          ,90,salary+9000,salary) AS "BONUS"
FROM employees
