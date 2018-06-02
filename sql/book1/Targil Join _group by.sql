SELECT d.department_id, d.department_name, e.employee_id, e.last_name,e.salary
FROM employees  e JOIN departments d
ON d.department_id = e.department_id


SELECT d.department_id, d.department_name, e.employee_id, e.last_name,e.salary
FROM employees  e , departments d
WHERE d.department_id = e.department_id;


SELECT d.department_id, d.department_name, COUNT(e.employee_id), AVG(e.salary)
FROM employees  e JOIN departments d
ON d.department_id = e.department_id
GROUP BY  d.department_id, d.department_name;


SELECT d.department_id, d.department_name,e.JOB_ID, COUNT(e.employee_id), AVG(e.salary)
FROM employees  e JOIN departments d
ON d.department_id = e.department_id
GROUP BY  d.department_id, d.department_name,e.JOB_ID;



SELECT emp.last_name AS EMP_NAME ,MNG.EMPLOYEE_ID,mng.last_name AS MNG_NAME
FROM  employees emp JOIN employees mng
ON emp.manager_id = mng.employee_id



SELECT COUNT(emp.last_name)  ,MNG.EMPLOYEE_ID,mng.last_name AS MNG_NAME
FROM  employees emp JOIN employees mng
ON emp.manager_id = mng.employee_id
GROUP BY MNG.EMPLOYEE_ID,mng.last_name 
ORDER BY 1 DESC




