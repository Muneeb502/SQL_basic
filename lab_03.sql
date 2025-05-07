mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| dawooduniversity   |
| information_schema |
| manxoor_bhai       |
| muneebdatabase     |
| mysql              |
| performance_schema |
| pract_questions    |
| sakila             |
| studentdb          |
| sys                |
+--------------------+
10 rows in set (0.00 sec)

mysql> create database Employees_data;
Query OK, 1 row affected (0.02 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| dawooduniversity   |
| employees_data     |
| information_schema |
| manxoor_bhai       |
| muneebdatabase     |
| mysql              |
| performance_schema |
| pract_questions    |
| sakila             |
| studentdb          |
| sys                |
+--------------------+
11 rows in set (0.00 sec)

mysql> use Employees_data;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> create table employee()
    -> ^C
mysql> create table employee( emp_id int primary key , first_name varchar(50), last_name varchar(50), designation varchar(50), department varchar(50), city(50),salary int , data_of_join date );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(50),salary int , data_of_join date )' at line 1
mysql> CREATE TABLE Employees (
    ->     emp_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     first_name VARCHAR(50),
    ->     last_name VARCHAR(50),
    ->     designation VARCHAR(50),
    ->     department VARCHAR(50),
    ->     city VARCHAR(50),
    ->     salary INT,
    ->     date_of_joining DATE
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO Employees (first_name, last_name, designation, department, city, salary, date_of_joining)
    -> VALUES
    -> ('John', 'Doe', 'Manager', 'HR', 'New York', 75000, '2012-03-15'),
    -> ('Jane', 'Smith', 'Auditor', 'Finance', 'Chicago', 68000, '2018-07-01'),
    -> ('Mike', 'Johnson', 'Engineer', 'IT', 'San Francisco', 95000, '2016-10-20'),
    -> ('Sara', 'Williams', 'Auditor', 'Finance', 'New York', 70000, '2014-11-10'),
    -> ('David', 'Brown', 'Manager', 'Sales', 'Los Angeles', 80000, '2010-02-01'),
    -> ('Emily', 'Davis', 'Engineer', 'IT', 'Chicago', 92000, '2019-05-05'),
    -> ('Chris', 'Miller', 'Clerk', 'HR', 'New York', 45000, '2021-06-10'),
    -> ('Anna', 'Wilson', 'Auditor', 'Compliance', 'Chicago', 71000, '2013-09-25'),
    -> ('Robert', 'Moore', 'Engineer', 'IT', 'San Francisco', 88000, '2012-12-01'),
    -> ('Laura', 'Taylor', 'Manager', 'Finance', 'Los Angeles', 83000, '2009-04-19');
Query OK, 10 rows affected (0.02 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select * from employee;
ERROR 1146 (42S02): Table 'employees_data.employee' doesn't exist
mysql> select * from Employees;
+--------+------------+-----------+-------------+------------+---------------+--------+-----------------+
| emp_id | first_name | last_name | designation | department | city          | salary | date_of_joining |
+--------+------------+-----------+-------------+------------+---------------+--------+-----------------+
|      1 | John       | Doe       | Manager     | HR         | New York      |  75000 | 2012-03-15      |
|      2 | Jane       | Smith     | Auditor     | Finance    | Chicago       |  68000 | 2018-07-01      |
|      3 | Mike       | Johnson   | Engineer    | IT         | San Francisco |  95000 | 2016-10-20      |
|      4 | Sara       | Williams  | Auditor     | Finance    | New York      |  70000 | 2014-11-10      |
|      5 | David      | Brown     | Manager     | Sales      | Los Angeles   |  80000 | 2010-02-01      |
|      6 | Emily      | Davis     | Engineer    | IT         | Chicago       |  92000 | 2019-05-05      |
|      7 | Chris      | Miller    | Clerk       | HR         | New York      |  45000 | 2021-06-10      |
|      8 | Anna       | Wilson    | Auditor     | Compliance | Chicago       |  71000 | 2013-09-25      |
|      9 | Robert     | Moore     | Engineer    | IT         | San Francisco |  88000 | 2012-12-01      |
|     10 | Laura      | Taylor    | Manager     | Finance    | Los Angeles   |  83000 | 2009-04-19      |
+--------+------------+-----------+-------------+------------+---------------+--------+-----------------+
10 rows in set (0.00 sec)

mysql> alter table Employees
    -> delete column first_name,delete column last_name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'delete column first_name,delete column last_name' at line 2
mysql> alter table Employeees
    -> drop column first_name,
    -> drop column last_name;
ERROR 1146 (42S02): Table 'employees_data.employeees' doesn't exist
mysql> alter table Employees
    -> drop column first_name,
    -> drop column last_name;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe Employees
    -> ;
+-----------------+-------------+------+-----+---------+----------------+
| Field           | Type        | Null | Key | Default | Extra          |
+-----------------+-------------+------+-----+---------+----------------+
| emp_id          | int         | NO   | PRI | NULL    | auto_increment |
| designation     | varchar(50) | YES  |     | NULL    |                |
| department      | varchar(50) | YES  |     | NULL    |                |
| city            | varchar(50) | YES  |     | NULL    |                |
| salary          | int         | YES  |     | NULL    |                |
| date_of_joining | date        | YES  |     | NULL    |                |
+-----------------+-------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

mysql> alter table Employees
    -> add column employee_name varchar(50) after emp_id;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe Employees;
+-----------------+-------------+------+-----+---------+----------------+
| Field           | Type        | Null | Key | Default | Extra          |
+-----------------+-------------+------+-----+---------+----------------+
| emp_id          | int         | NO   | PRI | NULL    | auto_increment |
| employee_name   | varchar(50) | YES  |     | NULL    |                |
| designation     | varchar(50) | YES  |     | NULL    |                |
| department      | varchar(50) | YES  |     | NULL    |                |
| city            | varchar(50) | YES  |     | NULL    |                |
| salary          | int         | YES  |     | NULL    |                |
| date_of_joining | date        | YES  |     | NULL    |                |
+-----------------+-------------+------+-----+---------+----------------+
7 rows in set (0.00 sec)

mysql> select * from Employees;
+--------+---------------+-------------+------------+---------------+--------+-----------------+
| emp_id | employee_name | designation | department | city          | salary | date_of_joining |
+--------+---------------+-------------+------------+---------------+--------+-----------------+
|      1 | NULL          | Manager     | HR         | New York      |  75000 | 2012-03-15      |
|      2 | NULL          | Auditor     | Finance    | Chicago       |  68000 | 2018-07-01      |
|      3 | NULL          | Engineer    | IT         | San Francisco |  95000 | 2016-10-20      |
|      4 | NULL          | Auditor     | Finance    | New York      |  70000 | 2014-11-10      |
|      5 | NULL          | Manager     | Sales      | Los Angeles   |  80000 | 2010-02-01      |
|      6 | NULL          | Engineer    | IT         | Chicago       |  92000 | 2019-05-05      |
|      7 | NULL          | Clerk       | HR         | New York      |  45000 | 2021-06-10      |
|      8 | NULL          | Auditor     | Compliance | Chicago       |  71000 | 2013-09-25      |
|      9 | NULL          | Engineer    | IT         | San Francisco |  88000 | 2012-12-01      |
|     10 | NULL          | Manager     | Finance    | Los Angeles   |  83000 | 2009-04-19      |
+--------+---------------+-------------+------------+---------------+--------+-----------------+
10 rows in set (0.00 sec)

mysql> select concat()
    -> ^C
mysql> select concat(employee_name , ",", designation,",",department) as employee_info from Employees;
+---------------+
| employee_info |
+---------------+
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
+---------------+
10 rows in set (0.00 sec)

mysql> ^C
mysql> INSERT INTO Employees(employee_name)
    -> VALUES
    -> ("John Doe"),
    -> ("Jane Smith"),
    -> ("Mike Johnson"),
    -> ("Sara Williams"),
    -> ("David Brown"),
    -> ("Emily Davis"),
    -> ("Chris Miller"),
    -> ("Anna Wilson"),
    -> ("Robert Moore"),
    -> ("Laura Taylor");
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select concat(employee_name , ",", designation,",",department) as employee_info from Employees;
+---------------+
| employee_info |
+---------------+
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
| NULL          |
+---------------+
20 rows in set (0.00 sec)

mysql> select * from Employees
    -> ;
+--------+---------------+-------------+------------+---------------+--------+-----------------+
| emp_id | employee_name | designation | department | city          | salary | date_of_joining |
+--------+---------------+-------------+------------+---------------+--------+-----------------+
|      1 | NULL          | Manager     | HR         | New York      |  75000 | 2012-03-15      |
|      2 | NULL          | Auditor     | Finance    | Chicago       |  68000 | 2018-07-01      |
|      3 | NULL          | Engineer    | IT         | San Francisco |  95000 | 2016-10-20      |
|      4 | NULL          | Auditor     | Finance    | New York      |  70000 | 2014-11-10      |
|      5 | NULL          | Manager     | Sales      | Los Angeles   |  80000 | 2010-02-01      |
|      6 | NULL          | Engineer    | IT         | Chicago       |  92000 | 2019-05-05      |
|      7 | NULL          | Clerk       | HR         | New York      |  45000 | 2021-06-10      |
|      8 | NULL          | Auditor     | Compliance | Chicago       |  71000 | 2013-09-25      |
|      9 | NULL          | Engineer    | IT         | San Francisco |  88000 | 2012-12-01      |
|     10 | NULL          | Manager     | Finance    | Los Angeles   |  83000 | 2009-04-19      |
|     11 | John Doe      | NULL        | NULL       | NULL          |   NULL | NULL            |
|     12 | Jane Smith    | NULL        | NULL       | NULL          |   NULL | NULL            |
|     13 | Mike Johnson  | NULL        | NULL       | NULL          |   NULL | NULL            |
|     14 | Sara Williams | NULL        | NULL       | NULL          |   NULL | NULL            |
|     15 | David Brown   | NULL        | NULL       | NULL          |   NULL | NULL            |
|     16 | Emily Davis   | NULL        | NULL       | NULL          |   NULL | NULL            |
|     17 | Chris Miller  | NULL        | NULL       | NULL          |   NULL | NULL            |
|     18 | Anna Wilson   | NULL        | NULL       | NULL          |   NULL | NULL            |
|     19 | Robert Moore  | NULL        | NULL       | NULL          |   NULL | NULL            |
|     20 | Laura Taylor  | NULL        | NULL       | NULL          |   NULL | NULL            |
+--------+---------------+-------------+------------+---------------+--------+-----------------+
20 rows in set (0.00 sec)

mysql> alter DELETE FROM Employees
    -> WHERE designation IS NULL
    ->   AND department IS NULL
    ->   AND city IS NULL
    ->   AND salary IS NULL
    ->   AND date_of_joining IS NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELETE FROM Employees
WHERE designation IS NULL
  AND department IS NULL
  AND c' at line 1
mysql> DELETE FROM Employees
    -> WHERE designation IS NULL
    ->   AND department IS NULL
    ->   AND city IS NULL
    ->   AND salary IS NULL
    ->   AND date_of_joining IS NULL;
Query OK, 10 rows affected (0.01 sec)

mysql> select * from Employees;
+--------+---------------+-------------+------------+---------------+--------+-----------------+
| emp_id | employee_name | designation | department | city          | salary | date_of_joining |
+--------+---------------+-------------+------------+---------------+--------+-----------------+
|      1 | NULL          | Manager     | HR         | New York      |  75000 | 2012-03-15      |
|      2 | NULL          | Auditor     | Finance    | Chicago       |  68000 | 2018-07-01      |
|      3 | NULL          | Engineer    | IT         | San Francisco |  95000 | 2016-10-20      |
|      4 | NULL          | Auditor     | Finance    | New York      |  70000 | 2014-11-10      |
|      5 | NULL          | Manager     | Sales      | Los Angeles   |  80000 | 2010-02-01      |
|      6 | NULL          | Engineer    | IT         | Chicago       |  92000 | 2019-05-05      |
|      7 | NULL          | Clerk       | HR         | New York      |  45000 | 2021-06-10      |
|      8 | NULL          | Auditor     | Compliance | Chicago       |  71000 | 2013-09-25      |
|      9 | NULL          | Engineer    | IT         | San Francisco |  88000 | 2012-12-01      |
|     10 | NULL          | Manager     | Finance    | Los Angeles   |  83000 | 2009-04-19      |
+--------+---------------+-------------+------------+---------------+--------+-----------------+
10 rows in set (0.00 sec)

mysql> UPDATE Employees SET employee_name = 'John Doe' WHERE emp_id = 1;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Employees SET employee_name = 'Jane Smith' WHERE emp_id = 2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Employees SET employee_name = 'Mike Johnson' WHERE emp_id = 3;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Employees SET employee_name = 'Sara Williams' WHERE emp_id = 4;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Employees SET employee_name = 'David Brown' WHERE emp_id = 5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Employees SET employee_name = 'Emily Davis' WHERE emp_id = 6;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Employees SET employee_name = 'Chris Miller' WHERE emp_id = 7;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Employees SET employee_name = 'Anna Wilson' WHERE emp_id = 8;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Employees SET employee_name = 'Robert Moore' WHERE emp_id = 9;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Employees SET employee_name = 'Laura Taylor' WHERE emp_id = 10;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Employees;
+--------+---------------+-------------+------------+---------------+--------+-----------------+
| emp_id | employee_name | designation | department | city          | salary | date_of_joining |
+--------+---------------+-------------+------------+---------------+--------+-----------------+
|      1 | John Doe      | Manager     | HR         | New York      |  75000 | 2012-03-15      |
|      2 | Jane Smith    | Auditor     | Finance    | Chicago       |  68000 | 2018-07-01      |
|      3 | Mike Johnson  | Engineer    | IT         | San Francisco |  95000 | 2016-10-20      |
|      4 | Sara Williams | Auditor     | Finance    | New York      |  70000 | 2014-11-10      |
|      5 | David Brown   | Manager     | Sales      | Los Angeles   |  80000 | 2010-02-01      |
|      6 | Emily Davis   | Engineer    | IT         | Chicago       |  92000 | 2019-05-05      |
|      7 | Chris Miller  | Clerk       | HR         | New York      |  45000 | 2021-06-10      |
|      8 | Anna Wilson   | Auditor     | Compliance | Chicago       |  71000 | 2013-09-25      |
|      9 | Robert Moore  | Engineer    | IT         | San Francisco |  88000 | 2012-12-01      |
|     10 | Laura Taylor  | Manager     | Finance    | Los Angeles   |  83000 | 2009-04-19      |
+--------+---------------+-------------+------------+---------------+--------+-----------------+
10 rows in set (0.00 sec)

mysql> select concat(employee_name , ",",designation,","department) as employeeinfo from Employees;
ERROR 1583 (42000): Incorrect parameters in the call to native function 'concat'
mysql> SELECT 
    ->     CONCAT(employee_name, ', ', designation, ', ', department) AS employee_info
    -> FROM Employees;
+----------------------------------+
| employee_info                    |
+----------------------------------+
| John Doe, Manager, HR            |
| Jane Smith, Auditor, Finance     |
| Mike Johnson, Engineer, IT       |
| Sara Williams, Auditor, Finance  |
| David Brown, Manager, Sales      |
| Emily Davis, Engineer, IT        |
| Chris Miller, Clerk, HR          |
| Anna Wilson, Auditor, Compliance |
| Robert Moore, Engineer, IT       |
| Laura Taylor, Manager, Finance   |
+----------------------------------+
10 rows in set (0.00 sec)

mysql> select count(designation) as total from
    -> Employees
    -> where designation = "Auditor";
+-------+
| total |
+-------+
|     3 |
+-------+
1 row in set (0.01 sec)

mysql> select city , departmnet 
    -> from Employees
    -> select city , departmnet , count(employee_name)
    -> from Employees
    -> group by city;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select city , departmnet , count(employee_name)
from Employees
group by city' at line 3
mysql> SELECT 
    ->     city, 
    ->     department, 
    ->     COUNT(*) AS num_employees
    -> FROM Employees
    -> GROUP BY city, department;
+---------------+------------+---------------+
| city          | department | num_employees |
+---------------+------------+---------------+
| New York      | HR         |             2 |
| Chicago       | Finance    |             1 |
| San Francisco | IT         |             2 |
| New York      | Finance    |             1 |
| Los Angeles   | Sales      |             1 |
| Chicago       | IT         |             1 |
| Chicago       | Compliance |             1 |
| Los Angeles   | Finance    |             1 |
+---------------+------------+---------------+
8 rows in set (0.00 sec)

mysql> select department , avg(salary) as avg_salary
    -> from Employees
    -> group by department , salary;
+------------+------------+
| department | avg_salary |
+------------+------------+
| HR         | 75000.0000 |
| Finance    | 68000.0000 |
| IT         | 95000.0000 |
| Finance    | 70000.0000 |
| Sales      | 80000.0000 |
| IT         | 92000.0000 |
| HR         | 45000.0000 |
| Compliance | 71000.0000 |
| IT         | 88000.0000 |
| Finance    | 83000.0000 |
+------------+------------+
10 rows in set (0.00 sec)

mysql> SELECT 
    ->     department, 
    ->     AVG(salary) AS average_salary
    -> FROM Employees
    -> GROUP BY department;
+------------+----------------+
| department | average_salary |
+------------+----------------+
| HR         |     60000.0000 |
| Finance    |     73666.6667 |
| IT         |     91666.6667 |
| Sales      |     80000.0000 |
| Compliance |     71000.0000 |
+------------+----------------+
5 rows in set (0.00 sec)

mysql> notee
mysql> select department , employee from employees
    -> group by department , employee_name;
ERROR 1054 (42S22): Unknown column 'employee' in 'field list'
mysql> select department , employee_name from employees
    -> group by department , employee_name;
+------------+---------------+
| department | employee_name |
+------------+---------------+
| HR         | John Doe      |
| Finance    | Jane Smith    |
| IT         | Mike Johnson  |
| Finance    | Sara Williams |
| Sales      | David Brown   |
| IT         | Emily Davis   |
| HR         | Chris Miller  |
| Compliance | Anna Wilson   |
| IT         | Robert Moore  |
| Finance    | Laura Taylor  |
+------------+---------------+
10 rows in set (0.00 sec)

mysql> select department , employee from employees
    -> group by department ;
ERROR 1054 (42S22): Unknown column 'employee' in 'field list'
mysql> select department , employee_name from employees
    -> group by department ;
ERROR 1055 (42000): Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'employees_data.employees.employee_name' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
mysql> select department count(employee_name) from employees
    -> group by department;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'count(employee_name) from employees
group by department' at line 1
mysql> select department count(employee_name) from employees
    -> select department, count(employee_name) from employees
    -> group by department;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'count(employee_name) from employees
select department, count(employee_name) from' at line 1
mysql> notee
mysql> notee;
mysql> select designation from employees;
+-------------+
| designation |
+-------------+
| Manager     |
| Auditor     |
| Engineer    |
| Auditor     |
| Manager     |
| Engineer    |
| Clerk       |
| Auditor     |
| Engineer    |
| Manager     |
+-------------+
10 rows in set (0.00 sec)

mysql> select designation , sum(salary) from employees
    -> select designation , sum(salary) as total_salray from employees
    -> group by designation;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select designation , sum(salary) as total_salray from employees
group by designa' at line 2
mysql> SELECT designation, SUM(salary) AS total_salary
    -> FROM employees
    -> GROUP BY designation;
+-------------+--------------+
| designation | total_salary |
+-------------+--------------+
| Manager     |       238000 |
| Auditor     |       209000 |
| Engineer    |       275000 |
| Clerk       |        45000 |
+-------------+--------------+
4 rows in set (0.00 sec)

mysql> SELECT designation, SUM(salary) AS total_salary
    -> FROM employees
    -> group by designation
    -> order by total_salary desc;
+-------------+--------------+
| designation | total_salary |
+-------------+--------------+
| Engineer    |       275000 |
| Manager     |       238000 |
| Auditor     |       209000 |
| Clerk       |        45000 |
+-------------+--------------+
4 rows in set (0.00 sec)

mysql> SELECT city , designation 
    -> from employees
    -> group by city , designation;
+---------------+-------------+
| city          | designation |
+---------------+-------------+
| New York      | Manager     |
| Chicago       | Auditor     |
| San Francisco | Engineer    |
| New York      | Auditor     |
| Los Angeles   | Manager     |
| Chicago       | Engineer    |
| New York      | Clerk       |
+---------------+-------------+
7 rows in set (0.00 sec)

mysql> SELECT city , department
    -> from employees
    -> group by city , department;
+---------------+------------+
| city          | department |
+---------------+------------+
| New York      | HR         |
| Chicago       | Finance    |
| San Francisco | IT         |
| New York      | Finance    |
| Los Angeles   | Sales      |
| Chicago       | IT         |
| Chicago       | Compliance |
| Los Angeles   | Finance    |
+---------------+------------+
8 rows in set (0.00 sec)

mysql> SELECT city , department
    -> from employees
    -> group by city , designation
    -> order by city asc;
ERROR 1055 (42000): Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'employees_data.employees.department' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
mysql> SELECT city, department, AVG(salary) AS avg_salary
    -> FROM employees
    -> GROUP BY city, department
    -> HAVING AVG(salary) >= 70000;
+---------------+------------+------------+
| city          | department | avg_salary |
+---------------+------------+------------+
| San Francisco | IT         | 91500.0000 |
| New York      | Finance    | 70000.0000 |
| Los Angeles   | Sales      | 80000.0000 |
| Chicago       | IT         | 92000.0000 |
| Chicago       | Compliance | 71000.0000 |
| Los Angeles   | Finance    | 83000.0000 |
+---------------+------------+------------+
6 rows in set (0.00 sec)

mysql> SELECT city, department  
    -> FROM employees
    -> GROUP BY city, department;
+---------------+------------+
| city          | department |
+---------------+------------+
| New York      | HR         |
| Chicago       | Finance    |
| San Francisco | IT         |
| New York      | Finance    |
| Los Angeles   | Sales      |
| Chicago       | IT         |
| Chicago       | Compliance |
| Los Angeles   | Finance    |
+---------------+------------+
8 rows in set (0.00 sec)

mysql> SELECT city, department  
    -> FROM employees
    -> GROUP BY city, department
    -> ORDER BY city ASC;
+---------------+------------+
| city          | department |
+---------------+------------+
| Chicago       | Compliance |
| Chicago       | Finance    |
| Chicago       | IT         |
| Los Angeles   | Finance    |
| Los Angeles   | Sales      |
| New York      | Finance    |
| New York      | HR         |
| San Francisco | IT         |
+---------------+------------+
8 rows in set (0.00 sec)

mysql> notee
