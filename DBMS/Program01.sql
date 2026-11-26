mysql> CREATE DATABASE college;
Query OK, 1 row affected (0.24 sec)

mysql> USE college;
Database changed
mysql> CREATE TABLE student(
    -> id INT PRIMARY KEY,
    -> name VARCHAR(50),
    -> department VARCHAR(30),
    -> marks INT,
    -> city VARCHAR(30)
    -> );
mysql> INSERT INTO student VALUES
    -> (1,'Akash','BCA',85,'Koppal'),
    -> (2,'Ravi','BCA',75,'Gangavathi'),
    -> (3,'Priya','BCom',90,'Koppal'),
    -> (4,'Manoj','BCA',60,'Yelburga'),
    -> (5,'Anu','BCom',80,'Koppal'),
    -> (6,'Kiran','BCA',95,'Gangavathi');
Query OK, 6 rows affected (0.93 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT*FROM student;
+----+-------+------------+-------+------------+
| id | name  | department | marks | city       |
+----+-------+------------+-------+------------+
|  1 | Akash | BCA        |    85 | Koppal     |
|  2 | Ravi  | BCA        |    75 | Gangavathi |
|  3 | Priya | BCom       |    90 | Koppal     |
|  4 | Manoj | BCA        |    60 | Yelburga   |
|  5 | Anu   | BCom       |    80 | Koppal     |
|  6 | Kiran | BCA        |    95 | Gangavathi |
+----+-------+------------+-------+------------+
6 rows in set (0.10 sec)

mysql> SELECT UPPER(name) FROM student;
+-------------+
| UPPER(name) |
+-------------+
| AKASH       |
| RAVI        |
| PRIYA       |
| MANOJ       |
| ANU         |
| KIRAN       |
+-------------+
6 rows in set (0.14 sec)

mysql> SELECT LOWER(name) FROM student;
+-------------+
| LOWER(name) |
+-------------+
| akash       |
| ravi        |
| priya       |
| manoj       |
| anu         |
| kiran       |
+-------------+
6 rows in set (0.35 sec)

mysql> SELECT name, LENGTH(name) FROM student;
+-------+--------------+
| name  | LENGTH(name) |
+-------+--------------+
| Akash |            5 |
| Ravi  |            4 |
| Priya |            5 |
| Manoj |            5 |
| Anu   |            3 |
| Kiran |            5 |
+-------+--------------+
6 rows in set (0.10 sec)

mysql> SELECT ROUND(85.678,2);
+-----------------+
| ROUND(85.678,2) |
+-----------------+
|           85.68 |
+-----------------+
1 row in set (0.06 sec)

mysql> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2026-11-05 13:33:36 |
+---------------------+
1 row in set (0.06 sec)

mysql> SELECT COUNT(*) FROM student;
+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+
1 row in set (0.44 sec)

mysql> SELECT SUM(marks) FROM student;
+------------+
| SUM(marks) |
+------------+
|        485 |
+------------+
1 row in set (0.08 sec)

mysql> SELECT AVG(marks) FROM student;
+------------+
| AVG(marks) |
+------------+
|    80.8333 |
+------------+
1 row in set (0.05 sec)

mysql> SELECT MAX(marks) FROM student;
+------------+
| MAX(marks) |
+------------+
|         95 |
+------------+
1 row in set (0.14 sec)

mysql> SELECT MIN(marks) FROM student;
+------------+
| MIN(marks) |
+------------+
|         60 |
+------------+
1 row in set (0.00 sec)
