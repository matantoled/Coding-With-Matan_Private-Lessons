/* 
    Lesson 6 - Working with DISTINCT and IN Clauses
========================================================
*/

-- 1. Select the first 2 records from the payment table.
SELECT * FROM payment
LIMIT 2;

-- 2. Select distinct amounts from the payment table.
SELECT DISTINCT(amount) FROM payment;

-- 3. Select distinct amounts from the payment table and order them in ascending order.
SELECT DISTINCT(amount) FROM payment
ORDER BY amount;

-- 4. Select all records from the payment table where the amount is either 0.99, 1.98, or 1.99.
SELECT * FROM payment
WHERE amount IN (0.99, 1.98, 1.99);

-- 5. Count the number of records from the payment table where the amount is either 0.99, 1.98, or 1.99.
SELECT COUNT(*) FROM payment
WHERE amount IN (0.99, 1.98, 1.99);

-- 6. Count the number of records from the payment table where the amount is not 0.99, 1.98, or 1.99.
SELECT COUNT(*) FROM payment
WHERE amount NOT IN (0.99, 1.98, 1.99);

-- 7. Select all customer records where the first name is either 'John', 'Jake', or 'Julie'.
SELECT * FROM customer
WHERE first_name IN ('John', 'Jake', 'Julie');
