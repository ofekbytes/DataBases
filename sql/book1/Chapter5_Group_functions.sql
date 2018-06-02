---Targil
SELECT employee_id, last_name, TO_CHAR(hire_date,'yy-mm-dd') AS  "Date"
  ,salary +salary*NVL(commission_pct,0) AS "New_salary"
  ,department_id
FROM employees
WHERE department_id IN (50,60,90,80)
AND salary +salary*NVL(commission_pct,0)>5000
ORDER BY salary +salary*NVL(commission_pct,0) DESC;

SELECT employee_id, last_name, TO_CHAR(hire_date,'yy-mm-dd') AS  "Date"
  ,salary +salary*NVL(commission_pct,0) AS "New_salary"
  ,department_id
FROM employees
WHERE department_id IN (50,60,90,80)
AND salary +salary*NVL(commission_pct,0)>5000
ORDER BY 4 DESC;



SELECT employee_id, last_name, TO_CHAR(hire_date,'yy-mm-dd') AS  "Date"
  ,salary +salary*NVL(commission_pct,0) AS New_salary
  ,department_id
FROM employees
WHERE department_id IN (50,60,90,80)
AND salary +salary*NVL(commission_pct,0)>5000
--AND UPPER(last_name)='KING'
ORDER BY New_salary DESC;

---Chapter 5 - Group Function


SELECT salary
FROM employees


SELECT SUM(salary)  AS "SUM" , AVG(salary) AS "AVG" , MIN(SAlary) as  "MIN" , MAX(salary) AS "MAX"
  ,COUNT(salary) AS "COUNT"
FROM employees



SELECT SUM(salary)  AS "SUM" , ROUND(AVG(salary) ) AS "AVG" , MIN(SAlary) as  "MIN" , MAX(salary) AS "MAX"
  ,COUNT(salary) AS "COUNT"
FROM employees

SELECT last_name,SUM(salary)  AS "SUM" , ROUND(AVG(salary) ) AS "AVG" , MIN(SAlary) as  "MIN" , MAX(salary) AS "MAX"
  ,COUNT(salary) AS "COUNT"
FROM employees 


SELECT SUM(last_name)  AS "SUM" , AVG(last_name) AS "AVG"
--, MIN(SAlary) as  "MIN" , MAX(salary) AS "MAX"
 -- ,COUNT(salary) AS "COUNT"
FROM employees


SELECT  MIN(last_name) as  "MIN" , MAX(last_name) AS "MAX"
  ,COUNT(last_name) AS "COUNT"
FROM employees


SELECT  MIN(hire_date) as  "MIN" , MAX(hire_date) AS "MAX"
  ,COUNT(hire_date) AS "COUNT"
FROM employees


SELECT count(employee_id), count(commission_pct), AVG(commission_pct)
FROM employees


SELECT count(employee_id), count(commission_pct), COUNT(*)
FROM employees


SELECT department_id
FROM employees

SELECT COUNT(department_id), COUNT(*), COUNT(DISTINCT department_id)
FROM employees


SELECT COUNT(NVL(department_id,0)), COUNT(*)
, COUNT(DISTINCT NVL(department_id,0))
FROM employees


SELECT ROUND(AVG(commission_pct),2),ROUND(AVG(NVL(commission_pct,0)),2)
, ROUND(SUM(commission_pct)/COUNT(*),2)
FROM employees

SELECT department_id, job_id----, COUNT(*)
FROM employees


SELECT department_id, COUNT(last_name), count(commission_pct)
FROM employees
GROUP BY department_id


SELECT DISTINCT department_id, COUNT(last_name), count(commission_pct)
FROM employees



SELECT department_id, COUNT(*), AVG(salary), SUM(salary)
FROM employees
GROUP BY department_id


SELECT department_id, job_id,COUNT(*), AVG(salary), SUM(salary)
FROM employees
GROUP BY department_id


SELECT department_id, job_id,COUNT(*), ROUND(AVG(salary)), SUM(salary)
FROM employees
GROUP BY department_id, job_id


SELECT department_id, job_id,COUNT(*), ROUND(AVG(salary)), SUM(salary)
FROM employees
WHERE department_id IN(50,60,90)
GROUP BY department_id, job_id
ORDER BY department_id, job_id


SELECT hire_date
FROM employees


SELECT TO_CHAR(hire_date,'YYYY')
FROM employees
ORDER BY TO_CHAR(hire_date,'YYYY')




SELECT TO_CHAR(hire_date,'YYYY'), COUNT(*)
FROM employees


SELECT TO_CHAR(hire_date,'YYYY'), COUNT(*)
FROM employees
GROUP BY TO_CHAR(hire_date,'YYYY')


SELECT TO_CHAR(hire_date,'YYYY'), department_id,COUNT(*), AVG(salary)
FROM employees
GROUP BY TO_CHAR(hire_date,'YYYY'), department_id


SELECT TO_CHAR(hire_date,'YYYY'), department_id,COUNT(*), ROUND(AVG(salary))
FROM employees
WHERE TO_CHAR(hire_date,'YYYY') IN('1997','1998','1999')
GROUP BY TO_CHAR(hire_date,'YYYY'), department_id
ORDER BY  1


SELECT TO_CHAR(hire_date,'YYYY'), department_id,COUNT(*), ROUND(AVG(salary))
FROM employees
WHERE TO_CHAR(hire_date,'YYYY') IN('1997','1998','1999')
AND  ROUND(AVG(salary))>=10000
GROUP BY TO_CHAR(hire_date,'YYYY'), department_id
ORDER BY  1


SELECT TO_CHAR(hire_date,'YYYY'), department_id,COUNT(*), ROUND(AVG(salary))
FROM employees
WHERE TO_CHAR(hire_date,'YYYY') IN('1997','1998','1999')
GROUP BY TO_CHAR(hire_date,'YYYY'), department_id
HAVING ROUND(AVG(salary))>=10000
ORDER BY  1


