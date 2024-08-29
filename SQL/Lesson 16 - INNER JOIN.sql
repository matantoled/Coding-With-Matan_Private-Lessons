/* 
    Lesson 16 - Using INNER JOIN to Combine Data from Multiple Tables
=========================================================================
*/

-- 1. Select all records from the payment table.
SELECT * 
FROM payment;

-- 2. Perform an INNER JOIN between the payment and customer tables, matching records where customer_id is the same in both tables.
SELECT * 
FROM payment
INNER JOIN customer
ON customer.customer_id = payment.customer_id;

-- 3. Select specific columns (payment_id, customer_id, first_name) from the payment and customer tables, using an INNER JOIN to match records.
SELECT payment_id, payment.customer_id, first_name 
FROM payment
INNER JOIN customer
ON customer.customer_id = payment.customer_id;

-- 4. Select the same specific columns (payment_id, customer_id, first_name) as above, with the INNER JOIN based on customer_id.
SELECT payment_id, payment.customer_id, first_name 
FROM payment
INNER JOIN customer
ON customer.customer_id = payment.customer_id;

-- 5. Select distinct payment_id along with customer_id and first_name, using INNER JOIN and ordering the results by customer_id.
SELECT DISTINCT(payment_id), payment.customer_id, first_name 
FROM payment
INNER JOIN customer
ON customer.customer_id = payment.customer_id
ORDER BY payment.customer_id;
