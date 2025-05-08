SHOW DATABASES;


USE employees_data;



SHOW TABLES;


SELECT * from employees;


----task-------->>>01
USE employees_data;


SELECT department , COUNT(*) as employees_count
FROM employees
GROUP BY department ; 


-----task----->>02
SELECT department , max(salary) as employees_count
FROM employees
GROUP BY department ;


-----task------>>03

SELECT  emp_id , employee_name , designation , salary 
FROM employees
ORDER BY salary ASC LIMIT 1 ; 


---task------>04

SELECT  department , COUNT(*) as employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2 ; 


--task------>05

SELECT DISTINCT  city
from employees
;



--task------->>05

SELECT department , employee_name 
FROM employees
ORDER BY department