/*
Alter (to change schema) 

#to add column
 ALTER TABLE table_name
 ADD COLUMN column_name , datatype , constraint;

#to drop column
 ALTER TABLE table_name
 DROP COLUMN column_name;

#to rename table
 ALTER TABLE table_name
 RENAME TO  Newtable_name;

#to change column (rename) 
 ALTER TABLE table_name
 CHANGE COLUMN old_name new_name new_datatype new_constraint;

#to modify Column (modify datatype/ constraint)
 ALTER TABLE table_name
 MODIFY col_name new_datatype new_constraint;
*/
USE college;
#ADD COLUMN
ALTER TABLE student 
ADD COLUMN Age INT;

SELECT * FROM student;

ALTER TABLE student        #drop column
DROP COLUMN Age ;

SELECT * FROM student;

 ALTER TABLE student       
 ADD COLUMN Age	INT NOT NULL DEFAULT 19;  # DEFAULT USE BECOZ TO GIVE ALL row value age 19
 
 SELECT * FROM student;
 
 ALTER TABLE student
 MODIFY COLUMN Age VARCHAR(2);       #to modify the column
 
 ALTER TABLE student
 CHANGE age stu_age INT;             #to change the constraint   
     
 INSERT INTO student(rolno, name, marks, stu_age)
 VALUES(117, "gargi", 68, 100);
 
 SELECT * FROM student;

ALTER TABLE student
DROP stu_age ;  

ALTER TABLE student
RENAME stu ;  

SELECT * FROM stu;

ALTER TABLE stu
RENAME student ;     #rename

SELECT * FROM student;

#drop : delete the table 
#truncate : delete the data in table  truncate table table_name;

TRUNCATE student;
SELECT * FROM student;

INSERT INTO student (rolno, name, marks, grade, city)
VALUES
(101, 'Aarav', 95, 'A', 'Mumbai'),
(102, 'Priya', 88, 'B', 'Delhi'),
(103, 'Rahul', 76, 'C', 'Bangalore'),
(104, 'Sneha', 91, 'A', 'Chennai'),
(105, 'Karan', 69, 'D', 'Pune');

SELECT * FROM student;

