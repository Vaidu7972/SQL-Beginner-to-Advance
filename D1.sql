#database : it is a collection of data

CREATE DATABASE college;                             #syntax of creating db   
CREATE DATABASE IF NOT EXISTS college;     #use this when ur db is already there it just gives warning 

USE college;        

#syntax of creating table : create table table_name ( colum1 datatype constraint , colum2 datatype constraint) 

CREATE TABLE student ( id INT PRIMARY KEY, NAME VARCHAR(50), age INT NOT NULL); 

# syntax  to insert data in db : insert into table_name values (column1_value, column1_value, column3_value)

INSERT INTO student VALUES(1, "Vaidehi", 10);
INSERT INTO student VALUES(2, "ashwini", 20);

SELECT * FROM student;   #Print or show data in tabular format 
SHOW tables;             #this show all table in particular db
SHOW DATABASES;

