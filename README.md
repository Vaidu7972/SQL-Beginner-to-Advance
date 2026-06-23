Day-1: creating  database , table , adding data to columns , deleting data by drop , displaying data  

Day-2: Query for if database already exist create & drop query using IF EXISTS & IF NOT EXISTS  

Day-3: PRACTICE QUESTION EMPLOYEE info

Day-4: Aggergate Functions: operations :  COUNT(), MAX(), MIN() , SUM(), AVG()
       Clauses: WHERE (rows) , GROUP BY (group the data) , ORDER BY (aesc / desc) , HAVING  (group)
       Practice question implemented

Day-5: Grop by clause Practice questions. 

Day-6: UPDATE query:  UPDATE student SET grade = "o";
       safe mode on / off:  SET SQL_SAFE_UPDATES=0;  OFF    SET SQL_SAFE_UPDATES=1; ON
       DELETE QUERY:  DELETE student WHERE condition;

Day-7: Primary key  , Foreign Key implementation , ERR Diagram visualization go to database reverse engineer continue continue choose ur db to visualise next & finish u will get  EER Diagram showing the relation among the tables

Day-8: To add column , drop column , rename table , change column rename , modify column 

Day-9: PRACTICE Qs: In the student table :
       a. Change the name of column "name" to "full_name".
       b. Delete all the students who scored marks less than 80.
       c. Delete the column for grades.

Day-10: Joins used to combine data left join ,right join , full join , inner join , left exclusive join , right exclusive join , self join

Day-11: union select column from tablea 
              UNION
              select column_name from tableb;

Day-12: SUBQuery / nested query / query with in the query
        a subquery or inner queru or nested query is a query within another SQL query.
        select name , marks  
        from student 
        where marks > ( select avg(marks) from student); 
        VIEWS: Virtual tables based on result-set of an SQL statment.
          create view as view1
          select name , id , marks from student; 
          select * from view1;
          
Day-13: constraints 


 




       
       
