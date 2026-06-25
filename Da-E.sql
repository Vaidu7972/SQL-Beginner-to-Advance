# Functions 
#2. String fuctions
use college;
use Studenttt;
     
     #  length fuction
SELECT name, Length(name) as name_length FROM Studenttt;
 
     #  LOWER() UPPER()
SELECT name, 
LOWER(name) As Lowercase_name FROM Studenttt;     

SELECT name,
UPPER(name) As Uppercase_name FROM Studenttt; 
  
    # CONCAT() : use to combine two columns 
SELECT  CONCAT(name, '<',rollno, '>') AS Student_detail from Studenttt;
    
#DATE FUNCTION 
SELECT NOW();           #current date and time gives

#date fuction 
#Mathematical fuction: mod() ROUND() FLOOR() CEIL()

#condition fuction if()