/*
        Lesson 24 - SubQuery and EXISTS
===============================================
*/

-- 1. Select all records from the film table.
SELECT * FROM film;

-- 2. Select films that have a rental_rate higher than the average rental_rate, ordered by rental_rate in descending order.
SELECT * 
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate)
					FROM film)
ORDER BY rental_rate DESC;

-- 3. Select all records from the rental table.
SELECT * FROM rental;

-- 4. Select all records from the inventory table.
SELECT * FROM inventory;

-- 5. Extract the year from the payment_date in the payment table.
SELECT EXTRACT(YEAR FROM payment_date) AS year 
FROM payment;

-- 6. Select film titles that were returned between '01-09-2005' and '04-09-2005', ordered by title.
SELECT title, return_date
FROM film
INNER JOIN inventory
ON film.film_id = inventory.film_id
INNER JOIN rental
ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '01-09-2005' AND '04-09-2005'
ORDER BY title;

-- 7. Select film IDs and titles where the film was returned between '01-09-2005' and '04-09-2005', ordered by title.
SELECT film_id, title
FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '01-09-2005' AND '04-09-2005')
ORDER BY title;

-- 8. Find all payments greater than 11.
SELECT * FROM payment
WHERE amount > 11;

-- 9. Select all records from the customer table.
SELECT * FROM customer;

-- 10. Find customers who have made at least one payment greater than 11, ordered by last name.
SELECT first_name, last_name
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 11
ORDER BY last_name;

-- 11. Find customers who have at least one payment greater than 11, using the EXISTS clause, ordered by last name.
SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS
(SELECT *
FROM payment AS p
WHERE p.customer_id = c.customer_id
AND amount > 11)
ORDER BY last_name;

-- 12. Find customers who do not have any payments greater than 11, using the NOT EXISTS clause, ordered by last name.
SELECT first_name, last_name
FROM customer AS c
WHERE NOT EXISTS
(SELECT *
FROM payment AS p
WHERE p.customer_id = c.customer_id
AND amount > 11)
ORDER BY last_name;
