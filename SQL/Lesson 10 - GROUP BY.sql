/* 
    Lesson 10 - Grouping and Summarizing Data with GROUP BY
================================================================
*/

-- 1. Select all records from the payment table.
SELECT * FROM payment;

-- 2. Group payment records by customer_id. This is similar to using DISTINCT on customer_id.
SELECT customer_id FROM payment
GROUP BY customer_id;

-- 3. Group payment records by customer_id and then sort by customer_id. This is like using DISTINCT and then sorting.
SELECT customer_id FROM payment
GROUP BY customer_id
ORDER BY customer_id;

-- 4. Group payment records by customer_id and calculate the total amount each customer has paid.
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id;

-- 5. Group payment records by customer_id and calculate the total amount each customer has paid.
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id;

-- 6. Find the customer who has spent the most money in total.
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 1;

-- 7. Find the number of transactions for each customer.
SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC;

-- 8. Group payment records by customer_id and calculate the total amount each customer has paid, then sort by the total amount in descending order.
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

-- 9. Group payment records by both staff_id and customer_id, then sort by customer_id.
SELECT customer_id, staff_id, SUM(amount) FROM payment
GROUP BY staff_id, customer_id
ORDER BY customer_id;

-- 10. Group payment records by the date of payment and calculate the total amount paid on each date, then sort by the total amount in descending order.
SELECT DATE(payment_date), SUM(amount)
FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC;

