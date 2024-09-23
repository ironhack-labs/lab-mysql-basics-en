-- QUERY 1
SELECT 
	client_id
FROM bank.client
WHERE district_id = 1
LIMIT 5;

-- QUERY 2
SELECT
	MAX(client_id)
FROM bank.client
WHERE district_id = 72;

-- QUERY 3
SELECT
	amount
FROM bank.loan
ORDER BY amount ASC
LIMIT 3;

-- QUERY 4
SELECT DISTINCT
	status
FROM bank.loan
ORDER BY status ASC;

-- QUERY 5
SELECT
	loan_id
FROM bank.loan
ORDER BY payments DESC
LIMIT 1;

-- QUERY 6
SELECT
	account_id,
    amount
FROM bank.loan
ORDER BY account_id ASC
LIMIT 5;

-- QUERY 7
SELECT
	account_id
FROM bank.loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- QUERY 8
SELECT DISTINCT
	k_symbol
FROM bank.order
ORDER BY k_symbol ASC;

-- QUERY 9
SELECT
	order_id
FROM bank.order
WHERE account_id = 34;

-- QUERY 10
SELECT DISTINCT
	account_id
FROM bank.order
WHERE order_id>=29540 AND order_id<=29560;

-- QUERY 11
SELECT
	amount
FROM bank.order
WHERE account_to = 30067122;

-- QUERY 12
SELECT
	trans_id,
	date,
    type,
    amount
FROM bank.trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- QUERY 13
SELECT
	district_id,
	COUNT(client_id)
FROM bank.client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

-- QUERY 14
SELECT
	type,
    COUNT(card_id)
FROM bank.card
GROUP BY type
ORDER BY COUNT(card_id) DESC;

-- QUERY 15
SELECT
	account_id,
    SUM(amount)
FROM bank.loan
GROUP BY account_id
ORDER BY SUM(amount) DESC
LIMIT 10;

-- QUERY 16
SELECT
	date,
    COUNT(loan_id)
FROM bank.loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- QUERY 17
SELECT
	date,
    duration,
    COUNT(loan_id)
FROM bank.loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration;

-- QUERY 18
SELECT
	account_id,
    type,
    SUM(amount) AS total_amount
FROM bank.trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;