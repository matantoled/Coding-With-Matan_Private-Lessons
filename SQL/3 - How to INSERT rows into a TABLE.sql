select * from employees;


/* insert values (row) to our table */
insert into employees
values (1, 'Eugene', 'Krabs', 25.50, '2024-08-18', 'bob@fake.email');



/* insert multiple rows to our table */
insert into employees
values 	(2, 'Squidward', 'Tentacles', 15.00, '2023-08-18', 'Squidward@fake.email'),
		(3, 'Spongebob', 'Squarepants', 35.50, '2022-08-18', 'Spongebob@fake.email'),
		(4, 'Patrick', 'Star', 12.50, '2021-08-18', 'Patrick@fake.email'),
		(5, 'Sandy', 'Cheeks', 45.50, '2020-08-18', 'Sandy@fake.email');


/* what will happened if we will attenpt to insert a row with missing data? */
insert into employees
values (6, 'Sheldon', 'Plankton', 25.50);

/*

we will get this row in our table:
employee_id		first_name 	  last_name	   hourly_pay 	hire_date   email
	6			  Sheldon	   Plankton	      25.50		  null		 null

*/


