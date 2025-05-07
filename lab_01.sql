mysql>  -- LAB = 1 ------>>> TAKS # 1
mysql> create database StudentBD;
ERROR 1007 (HY000): Can't create database 'studentbd'; database exists
mysql> drop database StudentBD;
Query OK, 1 row affected (0.07 sec)

mysql> create database Studentdb;
Query OK, 1 row affected (0.01 sec)

mysql> show database;
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
mysql> CREATE TABLE Studentinfo(stud_id int(3) Primary key , Stud_name VARCHAR(50), Stud_phone int(7), Stud_gpa int(7));
Query OK, 0 rows affected, 3 warnings (0.05 sec)

mysql> show tables;
+---------------------+
| Tables_in_studentdb |
+---------------------+
| studentinfo         |
+---------------------+
1 row in set (0.00 sec)

mysql> describe studentinfo;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| stud_id    | int         | NO   | PRI | NULL    |       |
| Stud_name  | varchar(50) | YES  |     | NULL    |       |
| Stud_phone | int         | YES  |     | NULL    |       |
| Stud_gpa   | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql>  Alter table student change stud_id id int , change Stud_name  name varchar(50), change  Stud_phone phone varchar(10), change Stud_gpa gpa float(3,2);
ERROR 1146 (42S02): Table 'studentdb.student' doesn't exist
mysql> rename table studentinfo to student;
Query OK, 0 rows affected (0.04 sec)

mysql>  Alter table student change stud_id id int , change Stud_name  name varchar(50), change  Stud_phone phone varchar(10), change Stud_gpa gpa float(3,2);
Query OK, 0 rows affected, 1 warning (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> describe student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   | PRI | NULL    |       |
| name  | varchar(50) | YES  |     | NULL    |       |
| phone | varchar(10) | YES  |     | NULL    |       |
| gpa   | float(3,2)  | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> --LAB = 1 ------>>> TAKS # 2
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--LAB = 1 ------>>> TAKS' at line 1
mysql> -- TASK # 02
mysql> alter table student add dob date ;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into  student values (1,"muneeb","03061619007",3.3,"2001-12-01"),(2,"afzaal","03056163",3.7,"2002-02-04"),(3 , "moiz", "030457813",3.5,"2003-05-07"),(4,"plumber","03568873",3.4,"2004-01-09"),(5, "Salman","030473632",3.3,"2001-09-03");
ERROR 1406 (22001): Data too long for column 'phone' at row 1
mysql> INSERT INTO student VALUES 
    -> (1, "muneeb", "03061619007", 3.3, "2001-12-01"),
    -> (2, "afzaal", "03056163", 3.7, "2002-02-04"),
    -> (3, "moiz", "030457813", 3.5, "2003-05-07"),
    -> (4, "plumber", "03568873", 3.4, "2004-01-09"),
    -> (5, "Salman", "030473632", 3.3, "2001-09-03");
ERROR 1406 (22001): Data too long for column 'phone' at row 1
mysql> INSERT INTO student VALUES 
    -> (1, "muneeb", "0306161900", 3.3, "2001-12-01"),
    -> (2, "afzaal", "0305616363", 3.7, "2002-02-04"),
    -> (3, "moiz", "0304578133", 3.5, "2003-05-07"),
    -> (4, "plumber", "0356887333", 3.4, "2004-01-09"),
    -> (5, "Salman", "0304736322", 3.3, "2001-09-03");
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from studnet;
ERROR 1146 (42S02): Table 'studentdb.studnet' doesn't exist
mysql> select * from student;
+----+---------+------------+------+------------+
| id | name    | phone      | gpa  | dob        |
+----+---------+------------+------+------------+
|  1 | muneeb  | 0306161900 | 3.30 | 2001-12-01 |
|  2 | afzaal  | 0305616363 | 3.70 | 2002-02-04 |
|  3 | moiz    | 0304578133 | 3.50 | 2003-05-07 |
|  4 | plumber | 0356887333 | 3.40 | 2004-01-09 |
|  5 | Salman  | 0304736322 | 3.30 | 2001-09-03 |
+----+---------+------------+------+------------+
5 rows in set (0.00 sec)

mysql> select * from student
    -> limit 1 offset 1;
+----+--------+------------+------+------------+
| id | name   | phone      | gpa  | dob        |
+----+--------+------------+------+------------+
|  2 | afzaal | 0305616363 | 3.70 | 2002-02-04 |
+----+--------+------------+------+------------+
1 row in set (0.00 sec)

mysql> delete from student where id = 3;
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+----+---------+------------+------+------------+
| id | name    | phone      | gpa  | dob        |
+----+---------+------------+------+------------+
|  1 | muneeb  | 0306161900 | 3.30 | 2001-12-01 |
|  2 | afzaal  | 0305616363 | 3.70 | 2002-02-04 |
|  4 | plumber | 0356887333 | 3.40 | 2004-01-09 |
|  5 | Salman  | 0304736322 | 3.30 | 2001-09-03 |
+----+---------+------------+------+------------+
4 rows in set (0.00 sec)

mysql> insert into student(id,name,dob) values (6,"usama","2004-09-12"),(7,"ali","2005-09-12");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from student;
+----+---------+------------+------+------------+
| id | name    | phone      | gpa  | dob        |
+----+---------+------------+------+------------+
|  1 | muneeb  | 0306161900 | 3.30 | 2001-12-01 |
|  2 | afzaal  | 0305616363 | 3.70 | 2002-02-04 |
|  4 | plumber | 0356887333 | 3.40 | 2004-01-09 |
|  5 | Salman  | 0304736322 | 3.30 | 2001-09-03 |
|  6 | usama   | NULL       | NULL | 2004-09-12 |
|  7 | ali     | NULL       | NULL | 2005-09-12 |
+----+---------+------------+------+------------+
6 rows in set (0.00 sec)

mysql> update student set phone = "0306127809", gpa = 3.2 where id = 6;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update student set phone = "0371127809", gpa = 3.1 where id = 7;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+----+---------+------------+------+------------+
| id | name    | phone      | gpa  | dob        |
+----+---------+------------+------+------------+
|  1 | muneeb  | 0306161900 | 3.30 | 2001-12-01 |
|  2 | afzaal  | 0305616363 | 3.70 | 2002-02-04 |
|  4 | plumber | 0356887333 | 3.40 | 2004-01-09 |
|  5 | Salman  | 0304736322 | 3.30 | 2001-09-03 |
|  6 | usama   | 0306127809 | 3.20 | 2004-09-12 |
|  7 | ali     | 0371127809 | 3.10 | 2005-09-12 |
+----+---------+------------+------+------------+
6 rows in set (0.00 sec)

mysql> delete from student where id in (2,5);
Query OK, 2 rows affected (0.01 sec)

mysql> select * from studnet ;
ERROR 1146 (42S02): Table 'studentdb.studnet' doesn't exist
mysql> select * from student;
+----+---------+------------+------+------------+
| id | name    | phone      | gpa  | dob        |
+----+---------+------------+------+------------+
|  1 | muneeb  | 0306161900 | 3.30 | 2001-12-01 |
|  4 | plumber | 0356887333 | 3.40 | 2004-01-09 |
|  6 | usama   | 0306127809 | 3.20 | 2004-09-12 |
|  7 | ali     | 0371127809 | 3.10 | 2005-09-12 |
+----+---------+------------+------+------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO student (id, name, phone, gpa, dob) VALUES
    -> (7, 'Faisal', '7890123456', 3.3, '2001-07-07'),
    -> (8, 'Ayesha', '8901234567', 3.9, '2002-08-08'),
    -> (9, 'Hamza', '9012345678', 2.8, '2000-09-09'),
    -> (10, 'Iqra', '0123456789', 3.2, '1999-10-10');
ERROR 1062 (23000): Duplicate entry '7' for key 'student.PRIMARY'
mysql> INSERT INTO student (id, name, phone, gpa, dob) VALUES
    -> (7, 'Faisal', '7890123456', 3.3, '2001-07-07'),
    -> (8, 'Ayesha', '8901234567', 3.9, '2002-08-08'),
    -> (9, 'Hamza', '9012345678', 2.8, '2000-09-09'),
    -> (10, 'Iqra', '0123456789', 3.2, '1999-10-10');
ERROR 1062 (23000): Duplicate entry '7' for key 'student.PRIMARY'
mysql> INSERT INTO student (id, name, phone, gpa, dob) VALUES
    -> (7, 'Faisal', '7890123456', 3.3, '2001-07-07'),
    -> (8, 'Ayesha', '8901234567', 3.9, '2002-08-08'),
    -> (9, 'Hamza', '9012345678', 2.8, '2000-09-09'),
    -> (1, 'Faisal', '7890123456', 3.3, '2001-07-07'),
    -> 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 5
mysql> INSERT INTO student (id, name, phone, gpa, dob) VALUES
    -> (2, 'Faisal', '7890123456', 3.3, '2001-07-07'), (8, 'Ayesha', '8901234567', 3.9, '2002-08-08'),
    -> (9, 'Hamza', '9012345678', 2.8, '2000-09-09'),
    -> (10, 'Iqra', '0123456789', 3.2, '1999-10-10');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from student;
+----+---------+------------+------+------------+
| id | name    | phone      | gpa  | dob        |
+----+---------+------------+------+------------+
|  1 | muneeb  | 0306161900 | 3.30 | 2001-12-01 |
|  2 | Faisal  | 7890123456 | 3.30 | 2001-07-07 |
|  4 | plumber | 0356887333 | 3.40 | 2004-01-09 |
|  6 | usama   | 0306127809 | 3.20 | 2004-09-12 |
|  7 | ali     | 0371127809 | 3.10 | 2005-09-12 |
|  8 | Ayesha  | 8901234567 | 3.90 | 2002-08-08 |
|  9 | Hamza   | 9012345678 | 2.80 | 2000-09-09 |
| 10 | Iqra    | 0123456789 | 3.20 | 1999-10-10 |
+----+---------+------------+------+------------+
8 rows in set (0.00 sec)

mysql> truncate table student;
Query OK, 0 rows affected (0.04 sec)

mysql> select & from studnet;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '& from studnet' at line 1
mysql> select * from student;
Empty set (0.00 sec)

mysql> notee;
