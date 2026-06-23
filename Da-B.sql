#UNION : Used to combine the result - set  of two or more Select statements
#gives unique records

#to use: 
/* every select should have same no of columns
 column must have similar  data types
 columns in every select should be in same order 
 
 #syntax
 SELECT COLUMN(S) FROM TABLEA
 UNION 
 SELECT COLUMN(S) FROM TABLEB
 
 */
 USE college;                               #prints all names unique , remove all duplicates
 SELECT name FROM EMPLOYEE
 UNION
 SELECT name FROM EMPLOYEE;
 
 #UNION ALL: prints all the data
 
SELECT name FROM EMPLOYEE
UNION  ALL
SELECT name FROM EMPLOYEE;
 
 
 
 