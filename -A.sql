/*JOINS IN SQL:
JOINS USED TO COMBINE rows from two or more  tables based on related column between them 
types:
INNER JOIN      (Between)

SELECT COLUMN
FROM tableA
INNER JOIN tableB
ON tableA.col_name = tableB.col_name;

LEFT JOIN       (A and common)                  #OUTER JOINS
RIGHT JOIN      (B and common) 
FULL JOIN       ( total)
*/

USE college;

CREATE TABLE STUDENTT ( id INT PRIMARY  KEY, name VARCHAR(50) );
INSERT INTO STUDENTT (id, name)
VALUES
(101," ashwini"), 
(102," Vaidehi"),
(103,"Priya"),
(104," Sakshi");

SELECT * FROM STUDENTT;
CREATE TABLE COURCES ( id INT PRIMARY  KEY, COURSE  VARCHAR(50) );
INSERT INTO COURCES (id, COURSE)
VALUES
(102," MATHS"), 
(105,"SCIENCE"),
(103,"ENGLISH"),
(107,"HINDI");

SELECT * 
FROM STUDENTT 
INNER JOIN COURCES
ON STUDENTT.ID = COURCES.ID;

#ALIAS alternate name student as s 
SELECT * 
FROM STUDENTT AS S
INNER JOIN COURCES AS C
ON S.id = c.id;

#LEFT JOIN : Returns all records from left table , and matched records from the right table 
#(left and common)

SELECT * 
FROM STUDENTT AS S
LEFT JOIN COURCES AS C
ON S.id = c.id;

#RIGHT JOIN : Returns all records from left table , and matched records from the right table 
#(RIGHt and common)
SELECT * 
FROM STUDENTT AS S
RIGHT JOIN COURCES AS C
ON S.id = c.id;

#FULL JOIN : Returns all reclrds when there is a match in either left or right table
#LEFT JOIN UNION RIGHT JOIN
SELECT * 
FROM STUDENTT AS S
LEFT JOIN COURCES AS C
ON S.id = c.id
UNION 
SELECT * 
FROM STUDENTT AS S
RIGHT JOIN COURCES AS C
ON S.id = c.id;

#LEFT EXCLUSIVE JOIN (ONLY USED IN LEFT) UNIQUE
SELECT * 
FROM STUDENTT AS S
LEFT JOIN COURCES AS C
ON S.id = c.id
WHERE C.id IS NULL;

#RIGHT EXCLUSIVE JOIN (ONLY USED IN RIGHT) UNIQUE
SELECT * 
FROM STUDENTT AS S
RIGHT JOIN COURCES AS C
ON S.id = c.id
WHERE S.id IS NULL;

#FULL EXCLUSIVE JOIN : Returns all reclrds when there is a match in either left or right table
#LEFT JOIN UNION RIGHT JOIN JUST ADD WHERE C.id IS NULL AND SAME FOR OTHER 
SELECT * 
FROM STUDENTT AS S
LEFT JOIN COURCES AS C
ON S.id = c.id
WHERE C.id IS NULL
UNION 
SELECT * 
FROM STUDENTT AS S
RIGHT JOIN COURCES AS C
ON S.id = c.id
WHERE S.id IS NULL ;

# SELF JOIN : It is a regular join but the table joined with itself

CREATE TABLE EMPLOYEE (id INT PRIMARY KEY, name VARCHAR(50) , manager_id INT);

INSERT INTO EMPLOYEE (id , name , manager_id)
VALUES
(101,"ashwini", 103), 
(102,"Vaidehi",104),
(103,"Priya", NULL),
(104,"Sakshi", 103);

SELECT * FROM EMPLOYEE;

SELECT *  
FROM EMPLOYEE AS A
JOIN EMPLOYEE AS B
ON A.id = B.manager_id;

#only name havy
SELECT A.name, B.name
FROM EMPLOYEE AS A
JOIN EMPLOYEE AS B
ON A.id = B.manager_id;

SELECT A.name as manager_name, B.name
FROM EMPLOYEE AS A
JOIN EMPLOYEE AS B
ON A.id = B.manager_id;
