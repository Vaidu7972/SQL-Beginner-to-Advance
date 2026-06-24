# Day-1: Creating  database , table , adding data to columns , deleting data by drop , displaying data  

# Day-2: Query for if database already exist create & drop query using IF EXISTS & IF NOT EXISTS  
         DROP DATABASE IF  EXISTS comppany;         #use this when ur db is not there it just gives warning not error
# Day-3: PRACTICE QUESTION EMPLOYEE info

# Day-4: Aggergate Functions: operations :  COUNT(), MAX(), MIN() , SUM(), AVG()
       Clauses: WHERE (rows) , GROUP BY (group the data) , ORDER BY (aesc / desc) , HAVING  (group) , limit
       Practice question implemented

# Day-5: Grop by clause Practice questions. 
       note theres a general order
       SELECT columns
       FROM table_name
       WHERE conditions
       GROUP BY columns
       HAVING condition
       ORDER BY columns ASC;



# Day-6: UPDATE query: 
        UPDATE student 
        SET grade = "o";
    safe mode on / off:  
        SET SQL_SAFE_UPDATES=0;  OFF    
        SET SQL_SAFE_UPDATES=1; ON
    DELETE QUERY:  DELETE student WHERE condition;

# Day-7: Primary key  , Foreign Key implementation , ERR Diagram visualization go to database reverse engineer continue continue choose ur db to visualise next & finish u will get  EER Diagram showing the relation among the tables

# Day-8: ALTER : (To change schema) , To add column , drop column , rename table , change column rename , modify column 
        ALTER TABLE student 
        ADD COLUMN Age INT;
        
        ALTER TABLE student        #drop column
        DROP COLUMN Age ;
        
        ALTER TABLE student
        MODIFY COLUMN Age VARCHAR(2); 
       
        #truncate : delete the data in table  truncate table table_name;
       
        TRUNCATE student;
        SELECT * FROM student;


        
# Day-9: PRACTICE Qs: In the student table :
       a. Change the name of column "name" to "full_name".
       b. Delete all the students who scored marks less than 80.
       c. Delete the column for grades.

# Day-A: Joins used to combine data left join ,right join , full join , inner join , left exclusive join , right exclusive join , self join
       SELECT * 
       FROM TABLEA
       INNER JOIN TABLEB
       ON TABLEA.COLUMNNAME = TABLEB.COLUMNNAME
       
       By using alias
       
       SELECT *
       FROM TableA as A
       INNER JOIN TableB as B
       ON A.id = B.id ;
       


  Full JOIN:  LEFT JOIN UNION RIGHT JOIN
       Left exclusive Join  null remove hota just add (WHERE B.id Is NULL;)
       
# Day-B: union 
              Select column from tablea 
              UNION
              select column_name from tableb;

#  Day-C: SUBQuery / nested query / query with in the query
        a subquery or inner queru or nested query is a query within another SQL query.
        
        select name , marks  
        from student 
        where marks > ( select avg(marks) from student);
        
        VIEWS: Virtual tables based on result-set of an SQL statment.
          
          create view as view1
          select name , id , marks from student; 
          select * from view1;
          
# Day-D: constraints
        use college;
        # Constraint   : rules applied to table column to ensure accuracy , validity and integrity of data
        # unique - PREVENT DUPLICATE
        #not null - ENSURE VALUE IS NOT NULL
        # CHECK  - RESTRICT VALUES USING A CONDITION
        # DEFAULT - SETS DEFAULT values
        # PRIMARY KEY - UNIQUELY IDENTIFYIES EACH ROW 
        # AUTO INCREMENT - AUTOMATICALLY GENERATES UNIQUE NUMBERS
        
        CREATE  TABLE USERS ( id INT PRIMARY KEY, Email VARCHAR(50) UNIQUE);
# Day-E: Functions 
Length fuction
date fuction 
Mathematical fuction: mod() ROUND() FLOOR() CEIL()
condition fuction if()

# Day-F:  # transactions and autocommit
          SET AUTO COMMIT = 0      #off
          SET AUTO COMMIT = 1      #On
          Rollback; if not happpy 
          Commit; happy with update
every query treated as a transaction and is commited automatically  
if we off auto commit we can explicitlly commit or rollback 


 
# Day-G:  Stored Procedure  (encapsulated logic , use to run multiple queries ) $$ WE USE THIS //
          DELIMITER $$
          CREATE PROCEDURE PROCEDURE_NAME()
          BEGIN
               -- SQL STATMENTS GO HERE
          END$$
          DELIMITER;

# Day-H:  Trigger : It is a special kind of store program that automatically executed (triggered) when a specific event occurs in table (insert , delete , update)  
           DELIMITER $$
           CREATE TRIGGER after_student_insert               #creating a trigger
           AFTER INSERT ON studenttt
           FOR EACH ROW
           BEGIN
           INSERT INTO student_log(rollno, name)
           VALUES (NEW.rollno, NEW.name); 
           END $$
           DELIMITER ;
      



       
       
