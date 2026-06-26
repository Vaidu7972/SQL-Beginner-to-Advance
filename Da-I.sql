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
SELECT * , 
		row_number() over(order by salary desc) as rn
from employees;

-- PARTITION : grouping
SELECT * , 
		row_number() over(partition by dept order by salary desc) as rnp              #grouping
from employees;

SELECT * from(
SELECT * , 
			row_number() over(partition by dept order by salary desc) as rnp
from employees 
) as temps
where rnp = 1 ;


-- SELECT * , rank() over(partition by dept 
-- order by salary desc) as rank_no
-- from employees ;
#row number
-- SELECT emp_name,                               #it will allocate  unique row number in decreasing order
-- 		salary,
--         Row_number() over(ORDER BY salary DESC ) AS row_num
-- From employees;

-- #RANK() : give same rank to equal values    skips 

-- SELECT emp_name,
--        salary, 
--        Rank() OVER(ORDER BY salary DESC) AS rank_no
-- FROM employees;

-- #DENSE_RANK() : Similar to RANK but does not skip numbers.

SELECT emp_name,
	   salary,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rankno
FROM employees;

-- #PARATITION BY : Partition = Create groups but don't merge rows.

SELECT emp_name, 
       dept,
       salary,
       RANK() OVER (PARTITION BY dept ORDER BY salary DESC) AS dept_rank
FROM employees; 3 

#running total : if we want cumulative salary (total)

SELECT emp_name,
       salary,
       SUM(salary) OVER(ORDER BY emp_id) AS running_total
FROM employees;



# Department total salary  : without GROUP BY 

SELECT emp_name,
	   dept, 
       salary,
       SUM(salary) OVER(PARTITION BY dept) AS dept_total
FROM employees;

#average salary by dept

SELECT emp_name,
       dept,
       salary,
       AVG(salary) OVER(Partition BY dept) AS dept_avg
FROM employees;

#LAG() : see previous row values

SELECT emp_name,
	   salary,
       LAG(salary) OVER(ORDER BY salary) AS previous_salary
FROM employees;


#LEAD(): see next row value


SELECT emp_name,
       salary,
       LEAD(salary) OVER(ORDER BY salary) AS next_salary
FROM employees;









