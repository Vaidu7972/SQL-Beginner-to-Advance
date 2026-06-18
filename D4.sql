#SQL  CONSTRAINTS : NOT NULL : cannot be empty , UNIQUE : cannot  be duplicate , PRIMARY KEY : unique key , notnull refrence sathi asti 
USE college;

CREATE TABLE STUDENT_DATA ( rollno INT PRIMARY KEY, Name VARCHAR(50) );

SELECT * FROM STUDENT_DATA;

CREATE TABLE temp1 ( id INT UNIQUE );

INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (102);

SELECT * FROM temp1

DROP TABLE temp2;
CREATE TABLE temp2 ( id  INT , Name VARCHAR(50) , Age INT , City VARCHAR(50) , PRIMARY KEY(id, Name));
# there can be two primary key bt the combination will be unique cannot be duplicate 

CREATE TABLE emp( id INT , salary INT DEFAULT 25000);

INSERT INTO emp  (id) VALUE (101);


USE college;
ALTER TABLE student
ADD COLUMN marks INT NOT NULL,
ADD COLUMN grade VARCHAR(1),
ADD COLUMN city VARCHAR(20);

SHOW COLUMNS FROM student;

INSERT INTO student (rolno, name, marks, grade, city)
VALUES
(105, 'Aarav', 95, 'A', 'Mumbai'),
(106, 'Priya', 88, 'B', 'Delhi'),
(107, 'Rahul', 76, 'C', 'Bangalore'),
(108, 'Sneha', 91, 'A', 'Chennai'),
(109, 'Karan', 69, 'D', 'Pune');

SELECT*FROM student;

#WHERE Clause : to define some conditions
#SELECT col1,col2 FROM table_name WHERE conditions;
#below query is for modifing data in existing data
UPDATE student
SET marks = 95, grade = 'A', city = 'Pune'
WHERE rolno = 101;

UPDATE student
SET marks = 89, grade = 'B', city = 'Mumbai'
WHERE rolno = 102;

UPDATE student
SET marks = 78, grade = 'C', city = 'Delhi'
WHERE rolno = 103;

UPDATE student
SET marks = 92, grade = 'A', city = 'Bangalore'
WHERE rolno = 104;

SELECT*FROM student;          #selects all columns data
SELECT city FROM student;     #selects all the data includes duplicate data too
SELECT DISTINCT city FROM student;  #selects specific column data but unique , dont show same values again

#WHERE clause : To define some conditions 
#SELECT col1, col2 FROM table_name WHERE conditions;

SELECT * FROM student WHERE marks > 80;             #displays the data which satisfy the condition 
SELECT * FROM student WHERE city = "Mumbai";


#in where clause we can use operators : 
#Arithmetic (+-*/%(modulus) remainder display krta) 
#Comparison (= equal to  , != not equal to, >,>=,<,<=)
#Logical Operators: AND, OR , NOT, IN, BETWEEN,ALL, LIKE, ANY
#Bitwise Operators: &(bitwise AND) , | (bitwise OR)

#Arithmetc operator 
SELECT * FROM student where marks+10 > 100

#Comparison Operator
SELECT * FROM student WHERE marks = 93;
SELECT * FROM student WHERE marks < 93;

#Logical Operator
#AND  : when both conditions to be true 
SELECT * FROM student WHERE marks < 80 and city = "Pune";

#OR : when one of the condition is true 
SELECT * FROM student WHERE marks < 90 and city = "Mumbai";

#BETWEEN : displays in given range
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

#IN : matches any value in the list 
SELECT * FROM student WHERE city IN ("Delhi", "Mumbai");

#NOT : To neglet/ignore the given condition 
SELECT * FROM student WHERE city NOT IN ("Delhi", "Mumbai");

#Limit Clause: Set an upper limit on number of (tuples) rows to be returned

SELECT * FROM student Limit 3;
SELECT * FROM student where marks > 75 Limit 3;

#Order By Clause : To sort in ascending (asc) or descending order (desc)

SELECT * FROM student ORDER BY city ASC;
#sytax: SELECT col1, col2 from table_name ORDER BY col_name ASC;

SELECT * FROM student ORDER BY marks DESC LIMIT 3;                     #we can add two  diff clause 

