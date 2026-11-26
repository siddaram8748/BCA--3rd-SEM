mysql> INSERT INTO student VALUES
    -> (8,'Pooja','BCA',78,'Koppla'),
    -> (9,'Ramesh','BCom',82,'Gangavathi'),
    -> (10,'Geeta','BCA',91,'Yelburga');
Query OK, 3 rows affected (0.07 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> UPDATE student
    -> SET marks=95
    -> WHERE id=7;
Query OK, 1 row affected (0.14 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELECT FROM student
    -> WHERE id=10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELECT FROM student
WHERE id=10' at line 1
mysql> DELETE FROM student
    -> WHERE id=10;
Query OK, 1 row affected (0.03 sec)

mysql> SELECT*FROM student;
+----+--------+------------+-------+------------+
| id | name   | department | marks | city       |
+----+--------+------------+-------+------------+
|  1 | Akash  | BCA        |    85 | Koppal     |
|  2 | Ravi   | BCA        |    75 | Gangavathi |
|  3 | Priya  | BCom       |    90 | Koppal     |
|  4 | Manoj  | BCA        |    60 | Yelburga   |
|  5 | Anu    | BCom       |    80 | Koppal     |
|  6 | Kiran  | BCA        |    95 | Gangavathi |
|  7 | Suresh | BCA        |    95 | Koppal     |
|  8 | Pooja  | BCA        |    78 | Koppla     |
|  9 | Ramesh | BCom       |    82 | Gangavathi |
+----+--------+------------+-------+------------+
9 rows in set (0.01 sec)

mysql> DELECT FROM student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELECT FROM student' at line 1
mysql> DELETE FROM student;
Query OK, 9 rows affected (0.04 sec)

mysql> SELECT * FROM student;
Empty set (0.00 sec)
