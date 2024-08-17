/*
create an 'employees' table to store basic employee information
*/
create table employees(
	employee_id int,
	first_name varchar(50), -- (amount of characters)
	last_name varchar(50),
	hourly_pay decimal(5, 2), -- (total digits including the digits after the decimal, digits after decimal)
	hire_date date
);


/*********************************************
we can rename a table:

alter table employees
rename to workers;
**********************************************/



/*********************************************
we can drop a table:

drop table employees;
**********************************************/


/* 
now we select a table
select * => means select all
*/
select * from employees;



/*
alter a table:
*/
alter table employees
add phone_number varchar(15);



/*
we can rename some column on our table, for example phone_number to email:
*/
alter table employees
rename column phone_number to email;

/*
but now we have varchar(15) with the email, so let's change that too
*/
alter table employees
alter column email type varchar(100);

