/* 
    Lesson 7 - Using LIKE and ILIKE for Pattern Matching
=============================================================
*/

-- 1. Select all customer records where the first name starts with 'J'.
SELECT * FROM customer
WHERE first_name LIKE 'J%';

-- 2. Count the number of customers whose first name starts with 'J'.
SELECT COUNT(*) FROM customer
WHERE first_name LIKE 'J%';

-- 3. Count the number of customers whose first name starts with 'J' and last name starts with 'S'.
SELECT COUNT(*) FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

-- 4. Count the number of customers whose first name starts with 'j' (case insensitive) and last name starts with 'S' (case insensitive).
SELECT COUNT(*) FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 'S%';

-- 5. Select all customer records where the first name contains 'er' anywhere.
-- The '%' at the end can match zero or more characters.
SELECT * FROM customer
WHERE first_name LIKE '%er%';

-- 6. Select all customer records where exactly one character precedes 'her' in the first name.
SELECT * FROM customer
WHERE first_name LIKE '_her%';

-- 7. Count the number of customers whose first name does not have exactly one character before 'her'.
SELECT COUNT(*) FROM customer
WHERE first_name NOT LIKE '_her%';

-- 8. Select last name, first name, and customer ID from customers whose first name starts with 'A', ordered by last name.
SELECT last_name, first_name, customer_id FROM customer
WHERE first_name LIKE 'A%'
ORDER BY last_name;

-- 9. Select last name, first name, and customer ID from customers whose first name starts with 'A' and last name does not start with 'B', ordered by last name.
SELECT last_name, first_name, customer_id FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
ORDER BY last_name;
