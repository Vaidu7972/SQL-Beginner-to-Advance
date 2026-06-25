# Trigger
/* It is a special kind of store program that automatically executed (triggered) 
when a specific event occurs in table (insert , delete , update)

commonly used for : 
logging changes
enforcing additional business rules
automatically updating relase data
*/

use college;
CREATE TABLE student_log (               # create a log table      
    rollno INT,
    name VARCHAR(50)
);

DROP TRIGGER IF EXISTS after_student_insert;

DELIMITER $$

CREATE TRIGGER after_student_insert               #creating a trigger
AFTER INSERT ON studenttt
FOR EACH ROW
BEGIN
    INSERT INTO student_log(rollno, name)
    VALUES (NEW.rollno, NEW.name);
END $$

DELIMITER ;

SHOW TRIGGERS;                                          #to display triggers

INSERT INTO studenttt                                   #test trigger
(rollno, name, marks, grade, city)
VALUES
(59, 'PREETI', 80, 'B', 'PUNE');

SELECT * FROM student_log;         

SHOW TABLES;

DESC studenttt;

DESC student_log; 

SHOW TRIGGERS;