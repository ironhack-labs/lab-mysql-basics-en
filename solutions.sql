-- Query 1
SELECT client_id
FROM bank.client
WHERE district_id = 1
LIMIT 5;

-- Query 2
SELECT client_id as id
FROM bank.client
WHERE district_id = 72
ORDER BY  id DESC
LIMIT 1 ;

-- Query 3
SELECT amount 
FROM bank.loan loan
ORDER BY amount asc
LIMIT 3;

-- Query 4
SELECT DISTINCT status
FROM bank.loan as loan
ORDER BY status;

-- Query 5
SELECT loan_id as id
FROM bank.loan
ORDER BY payments desc
LIMIT 1;

-- Query 6
SELECT account_id as id, amount
FROM bank.loan
ORDER BY id asc
LIMIT 5;

-- Query 7
SELECT account_id as id
FROM bank.loan
WHERE duration = 60
ORDER BY amount
LIMIT 5;

-- Query 8
SELECT DISTINCT k_symbol
FROM bank.order
ORDER BY k_symbol;

-- Query 9
SELECT order_id
FROM bank.order
WHERE account_id = 34;

-- Query 10 
SELECT DISTINCT account_id
FROM bank.order
WHERE 
	order_id >29540 and 
    order_id <= 29560;

-- Query 11
SELECT SUM(amount)
FROM bank.order
WHERE account_to = 30067122;

-- Query 12
SELECT trans_id, `date`, `type`, amount
FROM bank.trans
WHERE account_id = 793
ORDER BY `date` DESC
LIMIT 10;

-- Query 13
SELECT district_id, COUNT(client_id)
FROM bank.client
WHERE  district_id < 10
GROUP BY district_id;

-- Query 14
SELECT `type`, COUNT(`type`)
FROM bank.card
GROUP BY `type`;

-- Query 15
SELECT account_id as id, SUM(amount) as total
FROM bank.loan
GROUP BY id
ORDER BY total DESC
LIMIT 10;

-- Query 16
SELECT `date`, COUNT(`date`) 
FROM bank.loan
WHERE `date` < 930907
GROUP BY `date`
ORDER BY `date` DESC;

-- Query 17
SELECT `date`, duration, COUNT(`date`)
FROM bank.loan
WHERE `date` >= 971200 AND `date` <= 971225 -- i would have used `date` <= 971231, but in the expected result cuts it on dec 25 1997
GROUP BY `date`, duration
ORDER BY `date` ASC;

-- Query 18
SELECT account_id, `type`, SUM(amount)
FROM bank.trans
WHERE account_id = 396
GROUP BY `type`
ORDER BY `type` ASC;