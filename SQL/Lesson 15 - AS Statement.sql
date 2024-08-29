/* 
          Lesson 15 - Understanding the AS Statement
=================================================================
*/

-- 1. Count the total number of transactions (amount) from the payment table.
SELECT COUNT(amount)
FROM payment;

-- 2. Count the total number of transactions and use an alias to name the result as 'number_of_transactions'.
SELECT COUNT(amount) AS number_of_transactions
FROM payment;

-- 3. Group payment records by customer_id and calculate the total amount each customer has spent, using an alias 'total_spent' for the sum.
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id;

-- 4. Group payment records by customer_id and calculate the total amount each customer has spent, only showing those who have spent more than 100.
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

/*
We can not do:
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING total_spent > 100;
*/

-- 5. Select customer_id and rename the amount column as 'new_name', filtering the results to only show transactions greater than 2.
SELECT customer_id, amount AS new_name
FROM payment
WHERE amount > 2;

/*
We can not do:
SELECT customer_id, amount AS new_name
FROM payment
WHERE new_name > 2;
*/
