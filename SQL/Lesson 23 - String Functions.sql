/*
        Lesson 23 - String Functions and Operators
==========================================================
*/

-- 1. Select all records from the customer table.
SELECT * FROM customer;

-- 2. Retrieve the length of each customer's first name.
SELECT LENGTH(first_name)
FROM customer;

-- 3. Concatenate the first name and last name of each customer without any space.
SELECT first_name || last_name
FROM customer;

-- 4. Concatenate the first name and last name of each customer with a space between them, and alias the result as 'full_name'.
SELECT first_name || ' ' || last_name AS full_name
FROM customer;

-- 5. Convert the first name and last name to uppercase, concatenate them with a space in between, and alias the result as 'full_name'.
SELECT UPPER(first_name) || ' ' || UPPER(last_name) AS full_name
FROM customer;

-- 6. Create a basic email address by concatenating the first name, last name, and '@gmail.com'.
SELECT first_name || last_name || '@gmail.com'
FROM customer;

-- 7. Create a custom email by concatenating the lowercase first letter of the first name, the lowercase last name, and '@gmail.com'. Alias the result as 'custom_email'.
SELECT LOWER(left(first_name, 1)) || LOWER(last_name) || '@gmail.com' AS custom_email
FROM customer;
