/* 
    Lesson 17 - Exploring Joins: FULL OUTER, LEFT, and RIGHT JOINs
======================================================================
*/

---- FULL OUTER JOIN ---- 

-- 1. Perform a FULL OUTER JOIN between customer and payment tables, selecting records where customer_id is null in one of the tables.
SELECT * FROM customer
FULL OUTER JOIN payment
ON payment.customer_id = customer.customer_id
WHERE payment.customer_id IS null 
OR customer.customer_id IS null;

-- 2. Select all records from the film table.
SELECT * FROM film;

-- 3. Select all records from the inventory table.
SELECT * FROM inventory;


---- LEFT JOIN ---- 

-- 4. Perform a LEFT JOIN between film and inventory tables, selecting records for all films, including those without inventory.
SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id;

-- 5. Find all films that are not available in any store by using LEFT JOIN and filtering where inventory.film_id is null.
SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null;

-- 6. Perform a LEFT JOIN and filter records where inventory.film_id is not null, equivalent to an INNER JOIN without the WHERE clause.
SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NOT null;


---- RIGHT JOIN ---- 

-- 7. Perform a RIGHT JOIN between inventory and film tables, selecting records where a film exists but is not present in any inventory.
SELECT film.film_id, title, inventory_id, store_id
FROM inventory
RIGHT JOIN film
ON inventory.film_id = film.film_id
WHERE film.film_id IS null;
