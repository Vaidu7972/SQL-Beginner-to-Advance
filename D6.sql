#table related queries
USE college;

SET SQL_SAFE_UPDATES=0;
UPDATE student 
SET grade = "O"
WHERE grade = "A";        
#it will show 1175 error : ur using safe mode this mode is to avoid huge change in the data 
#to of the safe mode 
#SET SQL_SAFE_UPDATES=0;             To off safe mode
#SET SQL _SAFE_UPDATES=1;

SELECT * FROM students;

UPDATE student
SET marks = 82
WHERE rolno = 105;

SELECT * FROM student;

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

SELECT * FROM student;

UPDATE student
SET marks =  marks + 1;

SELECT * FROM student;

#DELETE operation 

DELETE FROM student
WHERE marks < 33;

SELECT * FROM student;