CREATE DATABASE Personal_Income_Project;
USE Personal_Income_Project;

-- For this project, I am looking to analyze my spending habits over the last year.
-- I will be looking at data from my two credits card (CITI and AMEX). 
-- The table has been imported from a custom table made on Google sheets. 
-- Throughout this project I will be displaying a wide variety of SQL commands to practice querying in MYSQL workbench.

-- Lets start by pulling up all of the data to view it. 
SELECT *
FROM Finance_Project;
		-- Looks at the whole table. 

SELECT DISTINCT store
FROM Finance_Project;
		-- Pulls up all of the distinct stores items where purchased at. 

SELECT DISTINCT credit_card
FROM Finance_Project;
		-- Shows all of the different credit cards used throughout the year. 

SELECT store, credit_card, amount, `essential?`
FROM Finance_Project
WHERE amount>1000;
		-- Shows all of the items or services purchased over the amount of $1000. 
        -- Show if they were essential or not. 

SELECT *
FROM Finance_Project
WHERE `essential?` = 'N';
		-- Shows all of the purcahses of non-essential items. 
        
SELECT * 
FROM Finance_Project
WHERE `essential?` = 'N' AND amount > 100;
		-- Shows all non-essential items that were more than $100. 
        
SELECT * 
FROM Finance_Project
WHERE `essential?` = 'Y' OR `essential?` = 'N';
		-- This will pull all of the results, as all items purchased are either non-essential or essential. 
        
SELECT *
FROM Finance_Project
WHERE NOT credit_card = 'CITI';
		-- This will pull all columns where the credit card is not a CITI card. 
        
SELECT * 
FROM Finance_Project
WHERE NOT `essential?` = 'Y';
		-- Shows all purchased items that are non-essentials. 
        
SELECT * 
FROM Finance_Project
WHERE NOT amount >= 100;
		-- This will pull all items that at under $100 because of the NOT greater than or equal to 100. 
        
SELECT *
FROM Finance_Project
ORDER BY date_of_purchase;
		-- This shows all purcahses ordered by the date of the purchase, starting with purcahses in January. 
        
SELECT *
FROM Finance_Project
ORDER BY amount DESC;
		-- Shows all purcahses starting with the most expensive purcahses. 
        
SELECT *
FROM Finance_Project
WHERE `essential?` = 'N'
ORDER BY amount;
		-- This will show us purchases that were non-essentials in ascending amount order. 

SELECT * 
FROM Finance_Project
WHERE amount IS NULL;
		-- This query searches for items that have no value for the amount column, i.e. the price was not entered. 
        
INSERT INTO Finance_Project (date_of_purchase, store, credit_card, amount, category, `essential?`)
VALUES ('01/01/2050', 'WALMART', 'AMEX', '1000000', 'fun', 'N');
		-- This insert command added another row of information to the table. 
        -- I added a purchase of a non-essential items from walmart for 1000000 on 1/1/2050 on my AMEX card. 
        
INSERT INTO Finance_Project
VALUES ('01/01/2050', 'APPLE', 'AMEX', '696969', 'bill', 'Y');
		-- This is another way to insert values into a table. 
        -- This method takes less time, but the individual entering the values needs to be sure that they include values for all columns in the table. 
        
UPDATE Finance_Project
SET date_of_purchase = '01/01/3000'
WHERE store = 'APPLE';
		-- This command updated a value in our table. 
        -- It changed the date of the purchase from APPLE to the year 3000 instead of 2050. 
        
DELETE FROM Finance_Project
WHERE 'date_of_purchase' = '01/01/2050';
		-- This command deleted a row form our table. 
        -- This command deleted the column that included a purchase date of 01/01/2050.
        -- This is only one column as I changed the other row that had a purchase date of 01/01/2050 to 01/01/3000. 
        
SELECT * 
FROM Finance_Project
LIMIT 50;
		-- This will select all rows for the first fifty entries in the table. 
        
SELECT MAX(amount)
FROM Finance_Project
WHERE amount <4000;
		-- This query will pull the highest number from the amount column that is less than 4000. 
        
SELECT COUNT(amount)
FROM Finance_Project;
		-- This command shows us that there were 498 total transactions on all credit cards. 
        
SELECT SUM(amount)
FROM Finance_Project
WHERE NOT amount>3000;
		-- This shows the total amount of money spent between the two cards. 
        -- The WHERE NOT statement is to omit the very high values that were added into the table to practice. 
        
SELECT AVG(amount)
FROM Finance_Project
WHERE NOT amount>3000;
		-- Expresses the average transaction on each purchase. 
        
SELECT *
FROM Finance_Project
WHERE store LIKE 'COSTCO';
		-- Shows all rows associated with the store name COSTCO. 
        
SELECT *
FROM Finance_Project
WHERE store LIKE '%A%';
		-- Shows all store that have an A in the their name with other letters on either side of the A;
        
SELECT store, COUNT(store)
FROM Finance_Project
GROUP BY store;
		-- Shows the frequency of purcahses from each of the stores. 
        
SELECT SUM(amount)
FROM Finance_Project
WHERE store = 'WALMART' AND NOT date_of_purchase = '01/01/2050';
		-- This looks like the total amount of money spent at WALMART for the year was $4036. 
        
SELECT SUM(amount)
FROM Finance_Project
WHERE store = 'COSTCO';
		-- This shows the total amount spent at COSTCO was $3898. 



        


















 















