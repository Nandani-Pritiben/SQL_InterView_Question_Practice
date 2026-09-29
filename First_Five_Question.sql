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

-- Retrieves Employees who earn more than manager
Select e.id,e.salary from Employees e INNER JOIN Employees m 
on e.manager_id=m.id where e.salary > m.salary

-- Print which department record where employee more then 5

 
select department_id,COUNT(*) AS MoreThan5Employee from dbo.Employees GROUP BY department_id
Having COUNT(*) > 5

-- Find Employee who joined last 6 month
Select * from Employees 
where join_data >= DATEADD(MONTH,-6,GETDATE());
