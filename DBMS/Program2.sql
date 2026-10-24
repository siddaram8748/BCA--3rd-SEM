CREATE DATABASE STUDENT;
USE STUDENT;

CREATE TABLE Student (
Regno INT,
StudentName VARCHAR(25),
Totalmarks int
);

ALTER TABLE Student
ADD Avg DECIMAL(5,2);

ALTER TABLE Student
MODIFY Avg DECIMAL(7,2);

RENAME TABLE Student To Scholar;

INSERT INTO Scholar VALUES
(101, 'Ramesh', 450, 90.00),
(102, 'Suresh', 420, 84.00),
(103, 'Priya', 460, 92.00),
(104, 'Anu', 400, 80.00),
(105, 'Kiran', 440, 88.00);

SELECT * FROM Scholar;

TRUNCATE TABLE Scholar;

SELECT * FROM Scholar;

DROP Table Scholar;

SELECT * FROM Scholar;





