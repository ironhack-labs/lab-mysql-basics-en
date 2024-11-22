-- Query 1 solution
SELECT district_id
FROM client
WHERE district_id = 1
ORDER BY district_id
LIMIT 5;

-- Query 2 solution
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- Query 3 solution
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

-- Query 4 solution
SELECT DISTINCT status
FROM loan
ORDER BY status ASC ;

-- Query 5 solution
SELECT  loan_id
FROM loan
ORDER BY payments  DESC
LIMIT 1;

-- Query 6 solution
SELECT  account_id, amount
FROM loan
ORDER BY account_id  ASC
LIMIT 5;

-- Query 7 solution
SELECT  account_id
FROM loan
WHERE duration = 60
ORDER BY  amount  ASC
LIMIT 5;

-- Query 8 solution
SELECT DISTINCT k_symbol
FROM 'order'

-- Query 9 solution
SELECT DISTINCT order_id
FROM 'order'
Where account_id=34;

-- Query 10 solution
ELECT DISTINCT account_id
FROM 'order'
Where order_id>29539 and order_id<29561;

-- Query 11 solution
SELECT  account_to, amount
FROM 'order'
Where account_to =  30067122;

-- Query 12 solution
SELECT  trans_id, date, type,amount
FROM trans
Where account_id =  793
ORDER BY date DESC
LIMIT 10;

-- Query 13 solution
SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

-- Query 14 solution
SELECT type, COUNT(*) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;

-- Query 15 solution -
SELECT account_id, SUM(amount) AS total_loan
FROM loan
GROUP BY account_id
ORDER BY total_loan DESC
LIMIT 10;

-- Query 16 solution -
SELECT date, COUNT(loan_id) AS number_of_loans
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- Query 17 solution -
SELECT date, duration, COUNT(loan_id) AS number_of_loans
FROM loan
WHERE date > 971200
GROUP BY date, duration
ORDER BY date, duration ASC;

-- Query 18 solution -
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;
