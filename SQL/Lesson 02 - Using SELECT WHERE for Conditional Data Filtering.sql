/* 
    Lesson 2: Using SELECT WHERE for Conditional Data Filtering
====================================================================
*/


-- 1. Select all customer records where the first name is 'Jared'.
SELECT * FROM customer
WHERE first_name = 'Jared';

-- 2. Select all films with a rental rate greater than 4.
SELECT * FROM film
WHERE rental_rate > 4;

-- 3. Select all films with a rental rate greater than 4 and a replacement cost of at least 19.99.
SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99;

-- 4. Select all films with a rental rate greater than 4, a replacement cost of at least 19.99, and a rating of 'R'.
SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

-- 5. Select the titles of films with a rental rate greater than 4, a replacement cost of at least 19.99, and a rating of 'R'.
SELECT title FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

-- 6. Count the number of films with a rental rate greater than 4, a replacement cost of at least 19.99, and a rating of 'R'.
SELECT COUNT(title) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

-- 7. Count the total number of films that meet the above conditions.
SELECT COUNT(*) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

-- 8. Select all films with a rating of either 'R' or 'PG-13'.
SELECT * FROM film
WHERE rating = 'R' OR rating = 'PG-13';

-- 9. Count the total number of films with a rating of either 'R' or 'PG-13'.
SELECT COUNT(*) FROM film
WHERE rating = 'R' OR rating = 'PG-13';

-- 10. Select all films where the rating is not 'R'.
SELECT * FROM film
WHERE rating != 'R';
