--- Chapter 6 -SUBQUERIES

SELECT salary
FROM employees
WHERE employee_id = 104


SELECT *
FROM employees
WHERE salary >6000


SELECT *
FROM employees
WHERE salary >(SELECT salary
                                  FROM employees
                                  WHERE employee_id = 104)
                                  
                                  
 SELECT *
FROM employees
WHERE salary >(SELECT AVG(salary)
                                  FROM employees
                                )    ;                             


 SELECT  COUNT(*)
FROM employees
WHERE salary >(SELECT AVG(salary)
                                  FROM employees
                                )    ;                             


SELECT AVG(salary)
 FROM employees;
 
 
 select employee_id, last_name, hire_date
 FROM employees
 WHERE hire_date <(SELECT hire_date
                                        FROM employees
                                        WHERE employee_id = 102)
                                        

 select employee_id, last_name, hire_date
 FROM employees
 WHERE hire_date <(SELECT last_name
                                        FROM employees
                                        WHERE employee_id = 102)  
                                        
                                        
   select employee_id, last_name, hire_date
 FROM employees
 WHERE hire_date <(SELECT hire_date,last_name
                                        FROM employees
                                        WHERE employee_id = 102)    
                                        
                                        
 select employee_id, last_name, hire_date
 FROM employees
 WHERE hire_date <(SELECT hire_date
                                        FROM employees
                                        WHERE employee_id = 0)   
                                        
 select employee_id, last_name, hire_date
 FROM employees
 WHERE hire_date <(SELECT hire_date
                                        FROM employees
                                        WHERE employee_id = 102
                                        ORDER BY 1)                                        
 
 
  select employee_id, last_name, hire_date, salary
 FROM employees
 WHERE hire_date <(SELECT hire_date
                                        FROM employees
                                        WHERE employee_id = 102)
 order by salary desc       
 
 select * from departments
 
 
  select employee_id, last_name, hire_date,salary
 FROM employees
 WHERE department_id =(SELECT department_id
                                        FROM departments
                                        WHERE department_name = 'IT')
 AND salary >( SELECT AVG(salary)
                                  FROM employees
                                )                                      
                                        
        select * from locations                                


       select employee_id, last_name, hire_date,salary
 FROM employees
 WHERE department_id =(SELECT department_id
                                                  FROM departments
                                                WHERE location_id = (SELECT location_id
                                                                                             FROM locations
                                                                                              WHERE city = 'Toronto'))
                                                                                              
  SELECT  last_name, first_name
  FROM employees
  WHERE manager_id = (SELECT employee_id
                                              FROM employees
                                                WHERE last_name = 'King'
                                                  AND manager_id IS NULL)
    ----Return Error - single-row subquery returns more than one row                                             
                                                  
    SELECT  last_name, first_name
  FROM employees
  WHERE manager_id = (SELECT employee_id
                                              FROM employees
                                                WHERE last_name = 'King')
                                                
                                                
      SELECT  last_name, first_name
  FROM employees
  WHERE manager_id in  (SELECT employee_id
                                              FROM employees
                                                WHERE last_name = 'King')
                                                
                                                
                              
                                                
                                                                                                 
      select employee_id, last_name, hire_date,salary
 FROM employees
 WHERE department_id =(SELECT department_id
                                        FROM departments
                                        WHERE department_name in ( 'IT', 'Sales'))
                                        
      select employee_id, last_name, hire_date,salary
 FROM employees
 WHERE department_id IN (SELECT department_id
                                                      FROM departments
                                                       WHERE department_name in ( 'IT', 'Sales'))
                                                                          
                                                                          
      select employee_id, last_name, hire_date,salary, department_id
 FROM employees
 WHERE department_id NOT IN (SELECT department_id
                                                      FROM departments
                                                       WHERE department_name in ( 'IT', 'Sales'))
                                                       
                                                       
  SELECT employee_id, last_name, hire_date,salary, department_id
FROM employees
WHERE salary >=(SELECT MAX(salary)
                                  FROM employees
                                  WHERE department_id =60)
                                  
                                  
    SELECT employee_id, last_name, hire_date,salary, department_id
FROM employees
WHERE salary <(SELECT MAX(salary)
                                  FROM employees
                                  WHERE department_id =60)
  AND department_id = 50 
  
  
  ---FROM
  
      SELECT employee_id, last_name, hire_date,salary, salary *1.2 AS total
FROM employees
WHERE total >=15000
                          
                          
        SELECT employee_id, last_name, hire_date,salary, salary *1.2 AS total
FROM employees
WHERE salary*1.2 >=15000



SELECT *
FROM (SELECT employee_id, last_name, hire_date,salary, salary *1.2 AS total
          FROM employees)
 WHERE total >=15000       
    
    
    
    SELECT e.last_name , e.total, department_id
FROM (SELECT employee_id, last_name, hire_date,salary, salary *1.2 AS total
          FROM employees) e
 WHERE total >=15000   
 
 
 
     
    SELECT last_name , total, department_id
FROM (SELECT employee_id, last_name,department_id, hire_date,salary, salary *1.2 AS total
             FROM employees) 
 WHERE total >=15000
 
 
     SELECT e.last_name , e.total, e.department_id, d.department_name
FROM (SELECT employee_id, last_name,department_id, hire_date,salary, salary *1.2 AS total
             FROM employees)  e JOIN departments d
ON e.department_id = d.department_id
 WHERE e.total >=15000
 