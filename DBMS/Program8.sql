CREATE DATABASE StudentLockDB;
USE StudentLockDB;
CREATE TABLE Student (
    Rno INT PRIMARY KEY,
    Stdname VARCHAR(20),
    Course VARCHAR(10)
 );
 INSERT INTO Student VALUES
 (101, 'Ravi', 'BCA'),
 (102, 'Priya', 'BCom'),
 (103, 'Anil', 'BSc'),
 (104, 'Sneha', 'BCA'),
 (105, 'Kiran', 'MCA');
 SELECT * FROM Student;
 
 CREATE USER 'student_user'@'localhost'
 IDENTIFIED BY 'Student@12345';
 
 GRANT SELECT, insert
 ON StudentLockDB.Student
 TO 'student_user'@'localhost';
 
 SHOW GRANTS FOR 'student_user'@'localhost';
 
 LOCK TABLES Student READ;
 SELECT * FROM Student;
 UNLOCK TABLES;
 