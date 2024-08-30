/* 
    Lesson 19 - Working with Date and Time in SQL
=================================================================
*/

-- 1. Show all current session parameters, including settings like timezone.
SHOW ALL;

-- 2. Show the current timezone setting of the database session.
SHOW TIMEZONE;

-- 3. Retrieve the current date and time (timestamp) with time zone.
SELECT NOW();

-- 4. Retrieve the current date and time (timestamp) with greater precision.
SELECT TIMEOFDAY();

-- 5. Retrieve the current time.
SELECT CURRENT_TIME;

-- 6. Retrieve the current date.
SELECT CURRENT_DATE;
