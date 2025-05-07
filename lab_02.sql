mysql> show database ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
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

mysql> use studentdb;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_studentdb |
+---------------------+
| student             |
+---------------------+
1 row in set (0.00 sec)

mysql> describe student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| id         | int         | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| phone      | varchar(10) | YES  |     | NULL    |       |
| gpa        | float(3,2)  | YES  |     | NULL    |       |
| dob        | date        | YES  |     | NULL    |       |
| semester   | varchar(10) | YES  |     | NULL    |       |
| department | varchar(50) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> INSERT INTO student VALUES 
    ->     -> (1, "muneeb", "03061619007", 3.3, "2001-12-01"),
    ->     -> (2, "afzaal", "03056163", 3.7, "2002-02-04"),
    ->     -> (3, "moiz", "030457813", 3.5, "2003-05-07"),
    ->     -> (4, "plumber", "03568873", 3.4, "2004-01-09"),
    ->     -> (2, "afzaal", "03056163", 3.7, "2002-02-04"),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> (1, "muneeb", "03061619007", 3.3, "2001-12-01"),
    -> (2, "afzaal", "030561' at line 2
mysql> INSERT INTO student(id,name,phone,gpa,dob) VALUES 
    ->  (1, "muneeb", "03061619007", 3.3, "2001-12-01"),
    ->  (2, "afzaal", "03056163", 3.7, "2002-02-04"),
    ->  (3, "moiz", "030457813", 3.5, "2003-05-07"),
    ->  (4, "plumber", "03568873", 3.4, "2004-01-09"),
    ->  (5, "Salman", "030473632", 3.3, "2001-09-03");
ERROR 1406 (22001): Data too long for column 'phone' at row 1
mysql>  INSERT INTO student(id,name,phone,gpa,dob) VALUES
    -> (1, "muneeb", "0306161907", 3.3, "2001-12-01"),
    -> (2, "afzaal", "03056163", 3.7, "2002-02-04"),
    -> (3, "moiz", "030457813", 3.5, "2003-05-07"),
    -> (4, "plumber", "03568873", 3.4, "2004-01-09"),
    -> (5, "Salman", "030473632", 3.3, "2001-09-03");
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> UPDATE student SET 
    ->     semester = 'Spring 2024', 
    ->     department = 'Computer Science', 
    ->     gpa = 3.3 
    -> WHERE id = 1;
ERROR 1406 (22001): Data too long for column 'semester' at row 1
mysql> 
mysql> UPDATE student SET 
    ->     semester = 'Fall 2023', 
    ->     department = 'Electrical', 
    ->     gpa = 3.7 
    -> WHERE id = 2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> 
mysql> UPDATE student SET 
    ->     semester = 'Spring 2024', 
    ->     department = 'Mechanical', 
    ->     gpa = 3.5 
    -> WHERE id = 3;
ERROR 1406 (22001): Data too long for column 'semester' at row 1
mysql> 
mysql> UPDATE student SET 
    ->     semester = 'Fall 2023', 
    ->     department = 'Computer Science', 
    ->     gpa = 3.4 
    -> WHERE id = 4;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> 
mysql> UPDATE student SET 
    ->     semester = 'Spring 2024', 
    ->     department = 'Civil', 
    ->     gpa = 3.3 
    -> WHERE id = 5;
ERROR 1406 (22001): Data too long for column 'semester' at row 1
mysql> alter table student
    -> change semester semester varchar(50);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| id         | int         | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| phone      | varchar(10) | YES  |     | NULL    |       |
| gpa        | float(3,2)  | YES  |     | NULL    |       |
| dob        | date        | YES  |     | NULL    |       |
| semester   | varchar(50) | YES  |     | NULL    |       |
| department | varchar(50) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> UPDATE student SET 
    ->     semester = 'Spring 2024', 
    ->     department = 'Computer Science', 
    ->     gpa = 3.3 
    -> WHERE id = 1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> 
mysql> UPDATE student SET 
    ->     semester = 'Fall 2023', 
    ->     department = 'Electrical', 
    ->     gpa = 3.7 
    -> WHERE id = 2;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> 
mysql> UPDATE student SET 
    ->     semester = 'Spring 2024', 
    ->     department = 'Mechanical', 
    ->     gpa = 3.5 
    -> WHERE id = 3;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> 
mysql> UPDATE student SET 
    ->     semester = 'Fall 2023', 
    ->     department = 'Computer Science', 
    ->     gpa = 3.4 
    -> WHERE id = 4;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> 
mysql> UPDATE student SET 
    ->     semester = 'Spring 2024', 
    ->     department = 'Civil', 
    ->     gpa = 3.3 
    -> WHERE id = 5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+----+---------+------------+------+------------+-------------+------------------+
| id | name    | phone      | gpa  | dob        | semester    | department       |
+----+---------+------------+------+------------+-------------+------------------+
|  1 | muneeb  | 0306161907 | 3.30 | 2001-12-01 | Spring 2024 | Computer Science |
|  2 | afzaal  | 03056163   | 3.70 | 2002-02-04 | Fall 2023   | Electrical       |
|  3 | moiz    | 030457813  | 3.50 | 2003-05-07 | Spring 2024 | Mechanical       |
|  4 | plumber | 03568873   | 3.40 | 2004-01-09 | Fall 2023   | Computer Science |
|  5 | Salman  | 030473632  | 3.30 | 2001-09-03 | Spring 2024 | Civil            |
+----+---------+------------+------+------------+-------------+------------------+
5 rows in set (0.00 sec)

mysql> select id, name , department from student;
+----+---------+------------------+
| id | name    | department       |
+----+---------+------------------+
|  1 | muneeb  | Computer Science |
|  2 | afzaal  | Electrical       |
|  3 | moiz    | Mechanical       |
|  4 | plumber | Computer Science |
|  5 | Salman  | Civil            |
+----+---------+------------------+
5 rows in set (0.00 sec)

mysql> select distinct department from student;
+------------------+
| department       |
+------------------+
| Computer Science |
| Electrical       |
| Mechanical       |
| Civil            |
+------------------+
4 rows in set (0.00 sec)

mysql> select name as Students_names , department as departments , dob as date_of_birth from student;
+----------------+------------------+---------------+
| Students_names | departments      | date_of_birth |
+----------------+------------------+---------------+
| muneeb         | Computer Science | 2001-12-01    |
| afzaal         | Electrical       | 2002-02-04    |
| moiz           | Mechanical       | 2003-05-07    |
| plumber        | Computer Science | 2004-01-09    |
| Salman         | Civil            | 2001-09-03    |
+----------------+------------------+---------------+
5 rows in set (0.00 sec)

mysql> ------take 01 complete--------------------------
    -> 
    -> 
    -> 
    -> 
    -> 
    -> 
    -> 
    -> 
    -> 
    -> 
    -> task # 02----------> lab 02
    -> select * from student where department = "Computer Science";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '------take 01 complete------------------------










task 
select * from stu' at line 1
mysql> select * from student 
    -> where department = "Computer Science";
+----+---------+------------+------+------------+-------------+------------------+
| id | name    | phone      | gpa  | dob        | semester    | department       |
+----+---------+------------+------+------------+-------------+------------------+
|  1 | muneeb  | 0306161907 | 3.30 | 2001-12-01 | Spring 2024 | Computer Science |
|  4 | plumber | 03568873   | 3.40 | 2004-01-09 | Fall 2023   | Computer Science |
+----+---------+------------+------+------------+-------------+------------------+
2 rows in set (0.00 sec)

mysql> select name , semester , gpa from student 
    -> where department = "Computer Science";
+---------+-------------+------+
| name    | semester    | gpa  |
+---------+-------------+------+
| muneeb  | Spring 2024 | 3.30 |
| plumber | Fall 2023   | 3.40 |
+---------+-------------+------+
2 rows in set (0.00 sec)

mysql> select name , department , dob from student 
    -> where dob > "2000";
ERROR 1525 (HY000): Incorrect DATE value: '2000'
mysql> ^C
mysql>  select name , department , dob from student
    -> where dob = "2000=01-01";
Empty set, 1 warning (0.00 sec)

mysql> ^C
mysql> select name , department , dob from student
    ->  where dob > "2000=01-01";
+---------+------------------+------------+
| name    | department       | dob        |
+---------+------------------+------------+
| muneeb  | Computer Science | 2001-12-01 |
| afzaal  | Electrical       | 2002-02-04 |
| moiz    | Mechanical       | 2003-05-07 |
| plumber | Computer Science | 2004-01-09 |
| Salman  | Civil            | 2001-09-03 |
+---------+------------------+------------+
5 rows in set, 1 warning (0.00 sec)

mysql> select name , gpa from student
    -> where gpa >= 3.5 and gpa <= 3.7;
+--------+------+
| name   | gpa  |
+--------+------+
| afzaal | 3.70 |
| moiz   | 3.50 |
+--------+------+
2 rows in set (0.00 sec)

mysql> select name from student
    -> where name like m%;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%' at line 2
mysql> select name from student 
    -> where name like %a%;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%a%' at line 2
mysql> ^C
mysql> ^C
mysql> select name from student 
    -> where name like "%a%";
+--------+
| name   |
+--------+
| afzaal |
| Salman |
+--------+
2 rows in set (0.00 sec)

mysql> notee;
