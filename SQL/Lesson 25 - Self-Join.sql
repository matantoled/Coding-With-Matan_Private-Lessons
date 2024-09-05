/*
        Lesson 25 - Self-Join
======================================
*/

-- 1. Select all records from the film table.
SELECT * FROM film;

-- 2. Find all pairs of films that have the same length.
SELECT f1.title, f2.title, f1.length
FROM film AS f1
JOIN film AS f2
ON f1.film_id != f2.film_id
AND f1.length = f2.length;
