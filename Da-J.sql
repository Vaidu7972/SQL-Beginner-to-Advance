# CTE (Common Table Expression) : "A temporary table created only for the current query."

#"A temporary table created only for the current query."
use vaidehi;
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept VARCHAR(50),
    salary INT
);

INSERT INTO employees VALUES
(1, 'Amit', 'HR', 35000),
(2, 'Priya', 'Finance', 50000),
(3, 'Rahul', 'IT', 60000),
(4, 'Sneha', 'Marketing', 45000),
(5, 'Vikram', 'Sales', 40000),
(6, 'Neha', 'IT', 65000),
(7, 'Arjun', 'Finance', 55000),
(8, 'Pooja', 'HR', 38000),
(9, 'Karan', 'Sales', 42000),
(10, 'Anjali', 'Marketing', 48000); 

SELECT * FROM employees;

#CTE = Common Table Expression
#create a temporary table containing employees whose salary is greater than 50000.
WITH high_salary AS (
    SELECT *
    FROM employees
    WHERE salary > 50000
)

#temprory table for HR employees
SELECT *
FROM high_salary;

WITH hr_employees AS (
    SELECT *
    FROM employees
    WHERE dept = 'HR'
)

SELECT *
FROM hr_employees;

/*
   WITH cte_name AS (
    SELECT ...
)

SELECT *
FROM cte_name;