---Chapter 2_WHERE


SELECT employee_id , last_name , salary , hire_date
FROM employees



SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE employee_id = 100


SELECT *
FROM employees
WHERE employee_id = 100



SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE salary >=15000;

---return error
/*
SELECT employee_id , last_name , salary ,salary*1.2 AS Total, hire_date
FROM employees
WHERE total >=15000;


SELECT employee_id , last_name , salary ,salary*0.2 AS Total, salary+total,hire_date
FROM employees
WHERE salary*1.2 >=15000;
*/
SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE hire_date <'01-jan-1993';


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE hire_date <'1993-01-01';


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE last_name = 'KING';


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE last_name = 'King';



SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE last_name <= 'Dz';



---BETWEEN


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE salary BETWEEN 10000 AND 15000;


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE salary BETWEEN 20000 AND 15000;


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE hire_date  BETWEEN '01-jan-1993' AND '31-dec-1993';


---&

SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE salary >&sal;

SELECT employee_id , last_name , salary , hire_date,&col1
FROM employees
WHERE &col1 >&sal;

SELECT employee_id , last_name , salary , hire_date,&&col2
FROM employees
WHERE &col2 >&sal;


----IN

SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE employee_id =100,105,107,110


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE employee_id IN (100,105,107,110)


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE employee_id IN (100,105,107,110,0)


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE employee_id IN (100,105,107,110,'A')


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE employee_id IN (&ID)



SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE employee_id NOT IN (100,105,107,110)


---LIKE
SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE last_name LIKE 'K%'


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE last_name LIKE '%a%'


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE last_name LIKE '%a'


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE last_name LIKE '_i%'


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE last_name LIKE '_i__'


SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE last_name LIKE '%a%t%'

SELECT employee_id , last_name , salary , hire_date
FROM employees
WHERE last_name NOT LIKE '%a%'



SELECT employee_id , last_name , salary , hire_date, commission_pct
FROM employees
WHERE commission_pct = NULL

---is null

SELECT employee_id , last_name , salary , hire_date, commission_pct
FROM employees
WHERE commission_pct IS NULL


SELECT employee_id , last_name , salary ,  commission_pct, SALARY * commission_pct +salary as "New_sal"
FROM employees
-WHERE commission_pct IS NOT NULL


----AND 

SELECT employee_id , last_name , salary ,  commission_pct, department_id
FROM employees
WHERE department_id IN (60,90,110)
AND salary >10000



----OR 

SELECT employee_id , last_name , salary ,  commission_pct, department_id
FROM employees
WHERE department_id IN (60,90,110)
OR salary >10000



SELECT employee_id , last_name , salary ,  commission_pct, department_id
FROM employees
WHERE department_id =60
OR department_id =110
OR department_id =90
AND salary >10000



SELECT employee_id , last_name , salary ,  commission_pct, department_id
FROM employees
WHERE (department_id =60
OR department_id =110
OR department_id =90)
AND salary >10000



SELECT employee_id , last_name , salary ,  commission_pct, department_id
FROM employees
WHERE (department_id =60
OR department_id =110
OR department_id =90)
AND salary >10000



----Targil

SELECT employee_id , last_name ||' '||first_name AS "Full_Name", salary ,  commission_pct
  , department_id, salary +salary*commission_pct AS "New_sal"
FROM employees
WHERE commission_pct IS NOT NULL
AND  salary +salary*commission_pct BETWEEN 10000 AND 15000



---ORDER BY 



SELECT employee_id , last_name ||' '||first_name AS "Full_Name", salary ,  commission_pct
  , department_id, salary +salary*commission_pct AS "New_sal"
FROM employees
WHERE salary >10000
ORDER BY salary


SELECT employee_id , last_name ||' '||first_name AS "Full_Name", salary ,  commission_pct
  , department_id, salary +salary*commission_pct AS "New_sal"
FROM employees
WHERE salary >10000
ORDER BY salary ASC



SELECT employee_id , last_name ||' '||first_name AS "Full_Name", salary ,  commission_pct
  , department_id, salary +salary*commission_pct AS "New_sal"
FROM employees
WHERE salary >10000
ORDER BY salary DESC


SELECT employee_id , last_name ||' '||first_name AS "Full_Name", salary ,  commission_pct
  , department_id, salary +salary*commission_pct AS "New_sal"
FROM employees
WHERE salary >10000
ORDER BY salary +salary*commission_pct DESC


SELECT employee_id , last_name ||' '||first_name AS "Full_Name", salary ,  commission_pct
  , department_id, salary +salary*commission_pct AS "New_sal"
FROM employees
WHERE salary >10000
ORDER BY "New_sal" DESC



SELECT employee_id , last_name ||' '||first_name AS "Full_Name", salary ,  commission_pct
  , department_id, salary +salary*commission_pct AS "New_sal"
FROM employees
WHERE salary >10000
ORDER BY 6  DESC


SELECT employee_id , last_name ||' '||first_name AS "Full_Name", salary ,  commission_pct
  , department_id, salary +salary*commission_pct AS "New_sal"
FROM employees
WHERE salary >10000
ORDER BY department_id , salary


SELECT employee_id , last_name ||' '||first_name AS "Full_Name", salary ,  commission_pct
  , department_id, salary +salary*commission_pct AS "New_sal"
FROM employees
WHERE salary >10000
ORDER BY department_id , salary DESC


SELECT employee_id , last_name ||' '||first_name AS "Full_Name", salary ,  commission_pct
  , department_id, salary +salary*commission_pct AS "New_sal"
FROM employees
WHERE salary >10000
ORDER BY department_id  DESC, salary DESC


SELECT employee_id , last_name ||' '||first_name AS "Full_Name", salary ,  commission_pct
  , department_id, salary +salary*commission_pct AS "New_sal"
FROM employees
WHERE salary >10000
ORDER BY 5  DESC, 6  DESC


SELECT employee_id , last_name ||' '||first_name AS "Full_Name", salary ,  commission_pct
  , department_id, salary +salary*commission_pct AS "New_sal"
FROM employees
WHERE salary >10000
ORDER BY department_id, "Full_Name"



