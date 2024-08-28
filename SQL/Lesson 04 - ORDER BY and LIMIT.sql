/* 
    Lesson 4 - Exploring Data with ORDER BY and LIMIT
==============================================================
*/

-- 1. Select all records from the payment table.
SELECT * FROM payment;

-- 2. Select all records from the payment table and sort them by payment_date in ascending order.
SELECT * FROM payment
ORDER BY payment_date;

-- 3. Select all records from the payment table, sort by payment_date in descending order, and limit the result to the top 5 records.
SELECT * FROM payment
ORDER BY payment_date DESC
LIMIT 5;

-- 4. Select records from the payment table where the amount is not 0.00, sort by payment_date in descending order, and limit the result to the top 5 records.
SELECT * FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 5;

-- 5. Select the first record from the payment table to view the general layout of the table.
SELECT * FROM payment
LIMIT 1;
