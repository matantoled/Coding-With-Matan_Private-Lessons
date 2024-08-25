/* 
    Lesson 3 - SQL Techniques: Sorting Data with ORDER BY
==============================================================
*/


-- 1. Select all customer records and sort them by first name in ascending order.
SELECT * FROM customer
ORDER BY first_name;

-- 2. Select all customer records and explicitly sort them by first name in ascending order.
SELECT * FROM customer
ORDER BY first_name ASC;

-- 3. Select all customer records and sort them by first name in descending order.
SELECT * FROM customer
ORDER BY first_name DESC;

-- 4. Select store_id, first_name, and last_name from customer and sort by store_id, then by first name.
SELECT store_id, first_name, last_name FROM customer
ORDER BY store_id, first_name;

-- 5. Select store_id, first_name, and last_name from customer and sort by store_id in descending order, then by first name in ascending order.
SELECT store_id, first_name, last_name FROM customer
ORDER BY store_id DESC, first_name ASC;

-- 6. Select first_name and last_name from customer and sort by store_id in descending order, then by first name in ascending order.
-- This works even though store_id is not selected.
SELECT first_name, last_name FROM customer
ORDER BY store_id DESC, first_name ASC;
