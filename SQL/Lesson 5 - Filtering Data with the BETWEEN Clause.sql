/* 
    Lesson 5 - Filtering Data with the BETWEEN Clause
==============================================================
*/

-- 1. Select all records from the payment table where the amount is between 8 and 9.
SELECT * FROM payment
WHERE amount BETWEEN 8 AND 9;

-- 2. Count the number of records in the payment table where the amount is between 8 and 9.
SELECT COUNT(*) FROM payment
WHERE amount BETWEEN 8 AND 9;

-- 3. Count the number of records in the payment table where the amount is not between 8 and 9.
SELECT COUNT(*) FROM payment
WHERE amount NOT BETWEEN 8 AND 9;

-- 4. Select all records from the payment table where the payment_date is between '2007-02-01' and '2007-02-15'.
-- Keep in mind that the timestamp information includes both the date and hour, minutes, etc.
SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

-- 5. Select all records from the payment table where the payment_date is between '2007-02-01' and '2007-02-14'.
SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-14';
