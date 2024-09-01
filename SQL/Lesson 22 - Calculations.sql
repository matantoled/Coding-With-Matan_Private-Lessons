/*
        Lesson 22 - Calculations and Percentage in SQL
==============================================================
*/

-- 1. Select all records from the film table.
SELECT * FROM film;

-- 2. Calculate the percentage of rental_rate relative to replacement_cost, rounded to 4 decimal places, and label it as 'percent_cost'.
SELECT ROUND((rental_rate/replacement_cost)*100, 4) AS percent_cost
FROM film;

-- 3. Calculate 10% of the replacement_cost and label it as 'deposit'.
SELECT 0.1 * replacement_cost AS deposit
FROM film;
