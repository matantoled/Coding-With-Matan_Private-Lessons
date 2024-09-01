/*
	Challenge 5
============================
*/

/*
Question 1:

During which months did payments occur? 
Format your answer to return back the full month name.
*/
SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH'))
FROM payment;

-- And if we want to get that in order:
SELECT TO_CHAR(payment_date, 'Month') AS month_name
FROM payment
GROUP BY TO_CHAR(payment_date, 'Month'), EXTRACT(MONTH FROM payment_date)
ORDER BY EXTRACT(MONTH FROM payment_date);


/*
Question 2:

How many payments occurred on a Monday?  
NOTE: We didn’t show you exactly how to do this, 
but use the documentation or Google to figure this out!
*/
SELECT COUNT(TO_CHAR(payment_date, 'Day'))
FROM payment
WHERE TRIM(TO_CHAR(payment_date, 'Day')) = 'Monday';

-- Or:
SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;
