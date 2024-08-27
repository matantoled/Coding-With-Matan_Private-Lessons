/* 
    Lesson 9 - Aggregating Data with SQL Functions
==============================================================
*/

-- 1. Select all records from the film table.
SELECT * FROM film;

-- 2. Find the minimum replacement cost from the film table.
SELECT MIN(replacement_cost) FROM film;

-- 3. Find the maximum replacement cost from the film table.
SELECT MAX(replacement_cost) FROM film;

-- 4. Find the maximum and minimum replacement costs from the film table.
SELECT MAX(replacement_cost), MIN(replacement_cost) 
FROM film;

-- 5. Count the total number of records in the film table.
SELECT COUNT(*) FROM film;

-- 6. Calculate the average replacement cost from the film table.
SELECT AVG(replacement_cost) FROM film;

-- 7. Calculate the average replacement cost and round it to 2 decimal places.
SELECT ROUND(AVG(replacement_cost), 2) FROM film;

-- 8. Calculate the sum of all replacement costs from the film table.
SELECT SUM(replacement_cost) FROM film;
