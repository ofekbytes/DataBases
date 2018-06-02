---Chapter 4 - JOIN  TABLES


DESC locations


DESC departments

SELECT *
FROM locations;

SELECT * FROM departments;


SELECT *
FROM locations INNER JOIN departments
ON location_id = location_id


---INNER JOIN ---EQUI JOIN ---ANSI
---CORRECT SYNTAX
SELECT *
FROM locations INNER JOIN departments
ON locations.location_id = departments.location_id


SELECT  department_id,department_name , city
FROM locations INNER JOIN departments
ON locations.location_id = departments.location_id

---RETURN ERROR -- column ambiguously defined
SELECT  department_id,department_name , location_id, city
FROM locations INNER JOIN departments
ON locations.location_id = departments.location_id

---CORRECT SYNTAX
SELECT  department_id,department_name , locations.location_id, city
FROM locations INNER JOIN departments
ON locations.location_id = departments.location_id


SELECT  departments.department_id,departments.department_name
  , locations.location_id, locations.city
FROM locations INNER JOIN departments
ON locations.location_id = departments.location_id


SELECT  d.department_id,d.department_name
  , l.location_id, l.city
FROM locations  l INNER JOIN departments d
ON l.location_id = d.location_id

SELECT  departments.department_id,d.department_name
  , l.location_id, l.city
FROM locations  l INNER JOIN departments d
ON l.location_id = d.location_id


SELECT  d.department_id,d.department_name
  , l.location_id, l.city
FROM locations  l JOIN departments d
ON l.location_id = d.location_id

----JOIN MORE THEN 2 TABLES
SELECT  e.employee_id, e.last_name,d.department_id,d.department_name
  , l.location_id, l.city
FROM locations  l JOIN departments d
ON l.location_id = d.location_id
        JOIN employees e
  ON e.department_id = d.department_id
  
  ---JOIN & WHERE
  
  SELECT  e.employee_id, e.last_name,e.salary,d.department_id,d.department_name
  , l.location_id, l.city
FROM locations  l JOIN departments d
ON l.location_id = d.location_id
        JOIN employees e
  ON e.department_id = d.department_id
WHERE d.department_id IN (50,60,90)



  SELECT  sum(e.salary),d.department_id,d.department_name
 , l.city
FROM locations  l JOIN departments d
ON l.location_id = d.location_id
        JOIN employees e
  ON e.department_id = d.department_id
WHERE d.department_id IN (50,60,90)
GROUP BY  d.department_id,d.department_name , l.city
