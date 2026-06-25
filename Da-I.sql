USE employee;
CREATE TABLE employees (
emp_id int, emp_name varchar(50), dept varchar(50), salary int);
INSERT INTO employees (emp_id, emp_name, dept, salary) VALUES
(1, 'Amit Sharma', 'HR', 35000),
(2, 'Priya Patel', 'Finance', 50000),
(3, 'Rahul Verma', 'IT', 60000),
(4, 'Sneha Gupta', 'Marketing', 45000),
(5, 'Vikram Singh', 'Sales', 40000),
(6, 'Neha Joshi', 'IT', 65000),
(7, 'Arjun Mehta', 'Finance', 55000),
(8, 'Pooja Kulkarni', 'HR', 38000),
(9, 'Karan Malhotra', 'Sales', 42000),
(10, 'Anjali Desai', 'Marketing', 48000);

SELECT * FROM employees;
-- ROW NUMBER
SELECT * , row_number() over(order by salary desc) as rn
from employees;

-- PARTITION : grouping
SELECT * , row_number() over(partition by dept order by salary desc) as rnp              #grouping
from employees;


