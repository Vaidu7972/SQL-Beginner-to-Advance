#Practice question
/* 
Qs: In the student table :
a. Change the name of column "name" to "full_name".
b. Delete all the students who scored marks less than 80.
c. Delete the column for grades.
*/

USE college;

ALTER TABLE student                                     # WE CAN ALSO WRITE CHANGE
RENAME COLUMN Name to Full_name;

SELECT * FROM student;

SET SQL_SAFE_UPDATES=0;       
DELETE FROM student 
WHERE marks < 80;

SELECT * FROM student;

ALTER TABLE student 
DROP COLUMN grade;

SELECT * FROM student;