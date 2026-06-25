USE college;

#Aggergate Functions: Perform calculation on set of values and return value. COUNT(), MAX(), MIN() , SUM(), AVG()
SELECT max(marks) FROM student;
SELECT avg(marks) FROM student;

#Group By Clause : Groups rows having same values into summary rows
#collects data from multiple records and groups the result by one or more column 
# generally we use it with some aggregate fuction 

#to count number of  students in  each city 
SELECT city, COUNT(name) 
FROM student 
GROUP BY city;

SELECT city, name,  COUNT(rolno) 
FROM student 
GROUP BY city, name;

#to get city wise avg marks of student
SELECT city, avg(marks)
FROM student
GROUP BY city;


#PRACTICE QUESTION
# Write Query to find avg marks in each city in ascending order

SELECT city , avg(marks) 
FROM student 
GROUP BY city
ORDER BY city;

SELECT city , avg(marks) 
FROM student 
GROUP BY city
ORDER BY avg(marks);    #order by clause by default gives the order of data in acending order.

SELECT city , avg(marks) 
FROM student 
GROUP BY city
ORDER BY avg(marks) DESC ;


SELECT grade
FROM student
GROUP BY  grade;

SELECT grade
FROM student
GROUP BY  grade
ORDER BY grade;

SELECT grade, count(rolno)
From student
GROUP BY grade
ORDER BY grade;

#Having Clause:  similar to where clauseuse to apply conditions   (Condition on groups)
#used when we want to apply any condition after grouping


#count number of studentsin each city where max marks cross 90
SELECT count(rolno) , city 
FROM student
GROUP BY city
HAVING max(marks) > 90;


#note theres a general order
#  SELECT columns
#   FROM table_name
#   WHERE condition
#   GROUP BY columns
#   HAVING condition
#   ORDER BY columns ASC; 
   

#WHERE clause gives condition on rows 
#HAVING clause gives condition on groups


SELECT city  
FROM student
WHERE grade = "A"
GROUP BY city
HAVING max(marks) > 90;

SELECT city  
FROM student
WHERE grade = "A"
GROUP BY city
HAVING max(marks) > 90
ORDER BY city ASC;

