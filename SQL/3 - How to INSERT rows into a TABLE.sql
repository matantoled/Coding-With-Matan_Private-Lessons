-- View all employees
SELECT * FROM employees;

-- Insert a single row with all columns specified
INSERT INTO employees (employee_id, first_name, last_name, hourly_pay, hire_date, email)
VALUES (1, 'Eugene', 'Krabs', 25.50, '2024-08-18', 'bob@fake.email');

-- Insert multiple rows with all columns specified
INSERT INTO employees (employee_id, first_name, last_name, hourly_pay, hire_date, email)
VALUES 
  (2, 'Squidward', 'Tentacles', 15.00, '2023-08-18', 'Squidward@fake.email'),
  (3, 'Spongebob', 'Squarepants', 35.50, '2022-08-18', 'Spongebob@fake.email'),
  (4, 'Patrick', 'Star', 12.50, '2021-08-18', 'Patrick@fake.email'),
  (5, 'Sandy', 'Cheeks', 45.50, '2020-08-18', 'Sandy@fake.email');


-- Attempting to insert a row with missing data
-- Since no constraints have been defined on this table, the columns for which no values are provided
-- will automatically be set to NULL. Therefore, this insert will succeed without any errors.
INSERT INTO employees (employee_id, first_name, last_name, hourly_pay)
VALUES (6, 'Sheldon', 'Plankton', 25.50);

/* 
Explanation:

Because we have not defined constraints (like NOT NULL) on any columns in our 'employees' table,
PostgreSQL will allow the insertion of rows with missing values by automatically assigning NULL
to the columns for which data is not provided. 

As a result, the following row will be inserted into our table:
| employee_id | first_name | last_name | hourly_pay | hire_date | email   |
|-------------|------------|-----------|------------|-----------|---------|
|      6      |   Sheldon  |  Plankton |   25.50    |    NULL   |  NULL   |

*** In a later section, we will discuss how to define constraints to prevent NULL values from being
inserted into specific columns, ensuring data integrity in our table. ***
*/
