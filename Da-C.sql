#SQL Sub Queries:
/*  a subquery or inner queru or nested query is a query within another SQL query.
It involves 2 select statements.
#syntax:
SELECT COLUMN(S) 
FROM TABLE_NAME
WHERE COL_NAME OPERATOR 
(SUBQUERY);
*/
/* 
PRACTICE QUESTION:
Get names of all students who scored more than class average.

Step 1. Find the avg of class
Step 2. Find the names of students with marks > avg
*/
CREATE TABLE Studenttt (rollno INT PRIMARY KEY, name VARCHAR(50), marks INT NOT NULL,  grade VARCHAR(1) ,City VARCHAR(20) );
INSERT INTO Studenttt (rollno, name, marks, grade, City)
VALUES
(101, 'Anil', 78, 'C', 'Pune'),
(102, 'Bhumika', 93, 'A', 'Mumbai'),
(103, 'Chetan', 85, 'B', 'Nashik'),
(104, 'Dhruv', 96, 'A', 'Pune'),
(105, 'Emanuel', 92, 'A', 'Nagpur'),
(106, 'Farah', 82, 'B', 'Mumbai');

SELECT * FROM  Studenttt;

SELECT AVG(marks)                     # to find average of student
FROM Studenttt;

SELECT name
FROM Studenttt                                #prints  only names
WHERE marks > 87.6667;                        #where use when u want subquery   

SELECT name, marks
FROM Studenttt
WHERE marks > 87.6667;

SELECT name, marks                                  #prints name and marks 
FROM Studenttt
WHERE marks > (SELECT AVG(marks)FROM Studenttt);    #sql sub queery

SELECT * FROM Studenttt;

SELECT rollno
FROM Studenttt
WHERE rollno % 2 = 0;

SELECT name , rollno
FROM Studenttt
WHERE rollno IN (102,104, 106);

#sql sub queries
SELECT name , rollno
FROM Studenttt
WHERE rollno IN (
       SELECT rollno
	   FROM Studenttt
       WHERE rollno % 2 = 0);

# find delhi students marks
#find their max marks using  form
SELECT * FROM Studenttt;

SELECT * 
FROM Studenttt
WHERE City = "Pune";

SELECT MAX(marks)
FROM (SELECT * 
FROM Studenttt
WHERE City = "Pune") AS temp;

#alternative

SELECT MAX(marks)
FROM Studenttt 
WHERE City = "Pune";

#or

SELECT (SELECT  MAX(marks) FROM student);

SELECT (SELECT  MAX(marks) FROM student), name 
FROM studenttt;

#VIEWS: Virtual tables based on result-set of an SQL statment.
#shows uptodate data 

CREATE VIEW view1 AS
SELECT rollno, name , marks FROM studenttt;

SELECT * FROM view1;                #we can do operation on this virtual tables 

SELECT * FROM view1 
WHERE marks > 90; 

DROP VIEW view1;          #delete 

SELECT * FROM view1;