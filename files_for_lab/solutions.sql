-- first query
USE bank;
SHOW TABLES;
DESCRIBE client;
SELECT district_id
FROM client;
SELECT client_id, district_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

-- Query 2
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- Query 3
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

-- Query 4
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

-- Query 5
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

 -- Query 6
SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

-- Query 7 
-- What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?

SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- Query 8
-- What are the unique values of k_symbol in the order table?
SELECT DISTINCT k_symbol
FROM `order`;

-- Query 9 
-- In the order table, what are the order_ids of the client with the account_id 34?
USE bank;

SELECT order_id
FROM `order`
WHERE account_id = 34;

-- Query 10
-- In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

-- Query 11
-- In the order table, what are the individual amounts that were sent to (account_to) id 30067122?
SELECT amount
FROM `order`
WHERE account_to =  30067122;

-- Query 12
-- In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.

SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

