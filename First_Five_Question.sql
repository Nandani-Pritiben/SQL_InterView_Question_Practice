CREATE DATABASE SQL_QUESTION
USE SQL_QUESTION
CREATE Table Employees
(
id INT PRIMARY KEY,
name varchar(50),
salary INT,
manager_id INT,
department_id INT,
join_data DATE
)

--Second Highest Salary
SELECT MAX(salary) From Employees
where 
salary < (
SELECT MAX(salary)  from dbo.Employees 
)

 -- Find Duplicaterecords in table 
Select name,COUNT(*) AS DUPLICATES from Employees
GROUP BY name Having COUNT(*)>1 
