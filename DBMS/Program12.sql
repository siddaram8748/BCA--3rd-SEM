mysql> USE college;
Database changed
mysql> DELIMITER //
mysql> CREATE PROCEDURE student_insert(
    -> IN sid INT,
    -> IN sname VARCHAR(50),
    -> IN dept VARCHAR(30),
    -> IN smarks INT,
    -> IN scity VARCHAR(30)
    -> )
    -> BEGIN
    -> INSERT INTO student
    -> VALUES(sid,sname,dept,smarks,scity);
    -> END //
Query OK, 0 rows affected (0.14 sec)

mysql> DELIMITER ;
mysql> DELIMITER //
mysql> CREATE PROCEDURE student_display()
    -> BEGIN
    -> SELECT*FROM student;
    -> END //
Query OK, 0 rows affected (0.79 sec)

mysql> DELIMITER ;
mysql> DELIMITER //
mysql> CREATE PROCEDURE student_update(
    -> IN sid INT,
    -> IN smarks INT
    -> )
    -> BEGIN
    -> UPDATE student
    -> SET marks = Smarks
    -> SET marks = smarks
    -> WHERE id = sid;
    -> END //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SET marks = smarks
WHERE id = sid;
END' at line 8
mysql> DELIMITER ;
mysql> DELIMITER //
mysql> CREATE PROCEDURE student_update(
    -> IN sid INT,
    -> IN smarks INT
    -> )
    -> BEGIN
    -> UPDATE student
    -> SET marks = smarks
    -> WHERE id = sid;
    -> END //
Query OK, 0 rows affected (0.07 sec)

mysql> DELIMITER ;
mysql> CALL student_insert(11,'Suresh','BCA',88,'Koppal');
Query OK, 1 row affected (0.19 sec)

mysql> CALL student_display();
+----+--------+------------+-------+------------+
| id | name   | department | marks | city       |
+----+--------+------------+-------+------------+
|  1 | Akash  | BCA        |    85 | Koppal     |
|  2 | Ravi   | BCA        |    75 | Gangavathi |
|  3 | Priya  | BCom       |    90 | Koppal     |
|  4 | Manoj  | BCA        |    60 | Yelburga   |
|  5 | Anu    | BCom       |    80 | Koppal     |
|  6 | Kiran  | BCA        |    95 | Gangavathi |
| 11 | Suresh | BCA        |    88 | Koppal     |
+----+--------+------------+-------+------------+
7 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> CALL student_update(11,95);
Query OK, 1 row affected (0.10 sec)

mysql> SELECT*FROM student WHERE id = 11;
+----+--------+------------+-------+--------+
| id | name   | department | marks | city   |
+----+--------+------------+-------+--------+
| 11 | Suresh | BCA        |    95 | Koppal |
+----+--------+------------+-------+--------+
1 row in set (0.00 sec)

mysql>
