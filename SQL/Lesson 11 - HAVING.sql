/* 
    Lesson 11 - Filtering Grouped Data with the HAVING Clause
=================================================================
*/

-- 1. Select all records from the payment table.
SELECT * FROM payment;

-- 2. Calculate the total amount spent by each customer, excluding customers with IDs 184, 87, and 477.
SELECT customer_id, SUM(amount)
FROM payment
WHERE customer_id NOT IN (184, 87, 477)
GROUP BY customer_id;

/*
We cannot filter with a WHERE statement on SUM(amount)
because the SUM(amount) is not going to happen until *after*
we call the GROUP BY. so what we can do?
after the GROUP BY, we use HAVING
*/
-- 3. Calculate the total amount spent by each customer and filter the results to show only customers who have spent more than 190.
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 190;

-- 4. Select all records from the customer table.
SELECT * FROM customer;

-- 5. Count the number of customers for each store and order the results by the highest customer count.
SELECT store_id, COUNT(customer_id) 
FROM customer
GROUP BY store_id
ORDER BY COUNT(customer_id) DESC;

-- 6. Count the number of customers for each store, showing only stores with more than 300 customers, and order by the highest customer count.
SELECT store_id, COUNT(customer_id) 
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300
ORDER BY COUNT(customer_id) DESC;
