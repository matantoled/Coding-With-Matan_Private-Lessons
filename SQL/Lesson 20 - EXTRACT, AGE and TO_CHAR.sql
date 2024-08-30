/* 
    Lesson 20 - Extracting and Formatting Date Information in SQL
=====================================================================
*/

-- 1. Select all records from the payment table.
SELECT * FROM payment;

-- 2. Extract the year from the payment_date column.
SELECT EXTRACT(YEAR FROM payment_date) AS year 
FROM payment;

-- 3. Extract the month from the payment_date column.
SELECT EXTRACT(MONTH FROM payment_date) AS month 
FROM payment;

-- 4. Extract the quarter from the payment_date column.
SELECT EXTRACT(QUARTER FROM payment_date) AS quarter
FROM payment;

-- 5. Calculate the age (time interval) since the payment_date.
SELECT AGE(payment_date)
FROM payment;

-- 6. Format the payment_date as 'MONTH-YYYY'.
SELECT TO_CHAR(payment_date, 'MONTH-YYYY')
FROM payment;

-- 7. Format the payment_date as 'MONTH YYYY'.
SELECT TO_CHAR(payment_date, 'MONTH YYYY')
FROM payment;

-- 8. Format the payment_date as 'mon/dd/YYYY'.
SELECT TO_CHAR(payment_date, 'mon/dd/YYYY')
FROM payment;

-- 9. Format the payment_date as 'MM/dd/YYYY'.
SELECT TO_CHAR(payment_date, 'MM/dd/YYYY')
FROM payment;

-- 10. Format the payment_date as 'MM-dd-YYYY'.
SELECT TO_CHAR(payment_date, 'MM-dd-YYYY')
FROM payment;

-- 11. Format the payment_date as 'dd-MM-YYYY'.
SELECT TO_CHAR(payment_date, 'dd-MM-YYYY')
FROM payment;

-- 12. Format the payment_date as 'dd/MM-YYYY'.
SELECT TO_CHAR(payment_date, 'dd/MM-YYYY')
FROM payment;
