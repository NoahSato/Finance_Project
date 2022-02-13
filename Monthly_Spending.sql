CREATE DATABASE money;
USE money;

SELECT *
FROM money.table;

SELECT COUNT(amount)
FROM money.table;
-- 505 total transactions

SELECT SUM(amount)
FROM money.table;
-- $50,337 total for spending

SELECT DISTINCT store
FROM money.table
ORDER BY store ASC;
-- Total list of different stores shopped at

SELECT COUNT(DISTINCT store)
FROM money.table;
-- 89 different stores shoppped at during this period


SELECT SUM(amount), store
FROM money.table
GROUP BY store
ORDER BY SUM(amount) DESC
LIMIT 10;
-- Shows the total amount of money spent at each store 

SELECT SUM(amount)
FROM money.table
WHERE date_of_purchase BETWEEN '01/01/2021' AND '01/31/2021';
-- $5047 for the month on January

SELECT SUM(amount)
FROM money.table
WHERE date_of_purchase BETWEEN '02/01/2021' AND '02/31/2021';
-- $6639 for the month of Febuary 

SELECT SUM(amount)
FROM money.table
WHERE date_of_purchase BETWEEN '03/01/2021' AND '03/31/2021';
-- $2472 for the month of March

SELECT SUM(amount)
FROM money.table
WHERE date_of_purchase BETWEEN '04/01/2021' AND '04/31/2021';
-- $2297 for the month of April

SELECT SUM(amount)
FROM money.table
WHERE date_of_purchase BETWEEN '05/01/2021' AND '05/31/2021';
-- $2911 for the month on May

SELECT SUM(amount)
FROM money.table
WHERE date_of_purchase BETWEEN '06/01/2021' AND '06/31/2021';
-- $5086 for the month of June

SELECT SUM(amount)
FROM money.table
WHERE date_of_purchase BETWEEN '07/01/2021' AND '07/31/2021';
-- $4034 for the month of July

SELECT SUM(amount)
FROM money.table
WHERE date_of_purchase BETWEEN '08/01/2021' AND '08/31/2021';
-- $3460 for the month on August

SELECT SUM(amount)
FROM money.table
WHERE date_of_purchase BETWEEN '09/01/2021' AND '09/31/2021';
-- $3992 for the month of September

SELECT SUM(amount)
FROM money.table
WHERE date_of_purchase BETWEEN '10/01/2021' AND '10/31/2021';
-- $3884 for the month of October

SELECT SUM(amount)
FROM money.table
WHERE date_of_purchase BETWEEN '11/01/2021' AND '11/31/2021';
-- $3339 for the month of November

SELECT SUM(amount)
FROM money.table
WHERE date_of_purchase BETWEEN '12/01/2021' AND '12/31/2021';
-- $3063 for the month of December























 


