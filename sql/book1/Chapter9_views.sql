---Chapter 9 - VIEWS


SELECT e.employee_id , e.last_name , e.department_id , d.department_name , e.salary
FROM employees e JOIN departments d
ON e.department_id = D.department_id



CREATE OR REPLACE VIEW emp_dep
AS
SELECT e.employee_id , e.last_name , e.department_id , d.department_name , e.salary
FROM employees e JOIN departments d
ON e.department_id = D.department_id



SELECT * 
FROM emp_dep



SELECT * 
FROM emp_dep
WHERE department_id = 30



SELECT last_name , salary , salary *1.12
FROM emp_dep
WHERE department_id = 30




CREATE  VIEW emp_dep
AS
SELECT e.employee_id , e.last_name , e.department_id , d.department_name , e.salary*1.2 AS Total
FROM employees e JOIN departments d
ON e.department_id = D.department_id



CREATE OR REPLACE VIEW emp_dep
AS
SELECT e.employee_id , e.last_name , e.department_id , d.department_name , e.salary*1.2  AS Total
FROM employees e JOIN departments d
ON e.department_id = D.department_id



SELECT * 
FROM emp_dep
WHERE total >=15000
