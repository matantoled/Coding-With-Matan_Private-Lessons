/*
--------- Basic SQL SELECT Queries ---------
*/


-- Select all columns from employees table
select * from employees; 

-- Select first_name and last_name columns from employees table
select first_name, last_name 
from employees; 

-- Select all columns where employee_id is 1
select * 
from employees 
where employee_id = 1; 

-- Select all columns where hourly_pay is 25.50
select * 
from employees 
where hourly_pay = 25.50; 

-- Select all columns where hourly_pay is greater than or equal to 25.50
select * 
from employees 
where hourly_pay >= 25.50; 

-- Select all columns where hourly_pay is greater than 26
select * 
from employees 
where hourly_pay > 26; 

-- Select all columns where employee_id is not 1
select * 
from employees 
where employee_id != 1; 

-- Select all columns where hire_date is null
select * 
from employees 
where hire_date is null; 

-- Select all columns where hire_date is not null
select * 
from employees 
where hire_date is not null; 

