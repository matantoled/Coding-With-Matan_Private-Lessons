/* 
    Introduction to SQL: Data Selection, Counting, and Distinct Values
===========================================================================
*/

-- 1. Retrieve a list of distinct first names from the 'actor' table.
SELECT DISTINCT(first_name) FROM actor;

-- 2. Count the total number of first names in the 'actor' table.
SELECT COUNT(first_name) FROM actor;

-- 3. Count the number of distinct first names in the 'actor' table.
SELECT COUNT(DISTINCT(first_name)) FROM actor;

-- 4. Count the total number of records in the 'payments' table.
SELECT COUNT(*) FROM payments;

-- 5. Retrieve a list of distinct payment amounts from the 'payment' table.
SELECT DISTINCT (amount) FROM payment;

-- 6. Count the number of distinct payment amounts in the 'payment' table.
SELECT COUNT(DISTINCT (amount)) FROM payment;
