#stored procedures in mysql : saved sql block that can be executed later 
#encapsulated logic that can be reused multiple times  like queries update or conditional operations
/* A delimiter in SQL is a character or sequence of characters used to signal the end of a command or statement. 
It tells the SQL database engine or command-line client exactly where one statement stops and the next one begins.
*/

use college;
SELECT * FROM Studenttt;


DELIMITER $$
CREATE PROCEDURE SELECCT_NAME()
BEGIN
SELECT * FROM Studenttt;
END $$
DELIMITER ;

 DELIMITER $$
CREATE PROCEDURE ADD_STUDENTS(
	IN S_ROLLNO INT(2),
	IN S_NAME VARCHAR(50),
	IN S_MARKS INT,
	IN S_GRADE VARCHAR(1),
	IN S_CITY VARCHAR(20)
)
BEGIN
     INSERT INTO Studenttt (rollno , name , marks , grade , City)
     VALUES (S_ROLLNO , S_NAME , S_MARKS, S_GRADE , S_CITY);
    SELECT * FROM Studenttt;
END $$
DELIMITER ;

CALL ADD_STUDENTS('130' , 'VAIDEHI' , '80' , 'A' , 'PUNE');

DROP PROCEDURE IF EXISTS ADD_STUDENTS;
DESC Studenttt;


SHOW PROCEDURE STATUS WHERE Db = 'startersql' ;
