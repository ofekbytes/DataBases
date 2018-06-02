---Chapter 1 - SELECT

SELECT *
FROM employees;


SELECT last_name
FROM employees


SELECT employee_id , last_name , salary
FROM employees


SELECT employee_id , last_name , salary , salary *1.2
FROM employees




SELECT employee_id
        , last_name ,salary , salary *1.2 from employEES



SELECT employee_id
      , last_name
      , salary
      , salary *1.2
      ,salary
FROM employees


SELECT employee_id , last_name , salary , (salary+1000) *1.2
FROM employees



SELECT employee_id , last_name , salary , hire_date, hire_date+2/24,hire_date-2
FROM employees


SELECT employee_id , last_name , salary , commission_pct, salary *0.24545454567567657,salary+10
FROM employees

SELECT last_name , first_name + 300
FROM employees

SELECT last_name , first_name , salary, commission_pct , salary * commission_pct
FROM employees



SELECT last_name , first_name , salary, commission_pct , salary * commission_pct AS "comm"
FROM employees



SELECT last_name , first_name , salary, commission_pct , salary * commission_pct  "comm"
FROM employees


SELECT last_name , first_name , salary, commission_pct , salary * commission_pct comm
FROM employees


SELECT last_name , first_name , salary, commission_pct , salary * commission_pct  "select"
FROM employees


SELECT last_name , first_name , salary, commission_pct , salary * commission_pct  "sal comm"
FROM employees



SELECT last_name ||first_name , salary, commission_pct , salary * commission_pct  "sal comm"
FROM employees


SELECT last_name ||' '||first_name , salary, commission_pct , salary * commission_pct  "sal comm"
FROM employees


SELECT last_name ||' and the first name is: '||first_name AS "Full_Name" , salary, commission_pct , salary * commission_pct  "sal comm"
FROM employees


SELECT department_id, JOB_ID
FROM  employees


SELECT DISTINCT department_id
FROM  employees


SELECT distinct department_id, JOB_ID
FROM  employees



SELECT distinct department_id, JOB_ID, employee_id
FROM  employees
