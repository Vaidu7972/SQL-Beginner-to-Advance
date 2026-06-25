USE college;
# creation of PRIMARY KEY and FOREIGN KEY

CREATE TABLE Dept ( 
      Id INT PRIMARY KEY , 
      Name VARCHAR(50)
); 
    
CREATE TABLE Teacher (
     Id INT PRIMARY KEY , 
     Name VARCHAR(50),
     dept_id INT,
     FOREIGN KEY (dept_id) REFERENCES dept(Id)
     );
 
#Cascading in FOREIGN KEY (if one place change other place also change)
#updated then updates in child table also and parent table also.

INSERT INTO Dept
VALUES (101 , "English"), (102, "Maths");
SELECT * FROM Dept;

UPDATE Dept
SET Id = 103   
WHERE Id = 102;

CREATE TABLE tteacher (  
     Id INT PRIMARY KEY , 
     Name VARCHAR(50),
     dept_id INT,
     FOREIGN KEY (dept_id) REFERENCES dept(Id)
     ON UPDATE CASCADE
     ON DELETE CASCADE
     );

INSERT INTO tteacher
VALUES 
(101, "abc", 101), (102, "bcd", 102);
SELECT * FROM tteacher;
     
 
 
