-- Query #1

SELECT 
client_id
FROM bank.client
where district_id = 1
Limit 5;

-- Query #2

SELECT
client_id
FROM bank.client
WHERE client_id = (
	SELECT MAX(client_id)
    FROM bank.client
	WHERE district_id = "72"
    );

-- Query #3

SELECT
	amount
FROM bank.loan
ORDER BY amount ASC
LIMIT 3;

-- Query #4
SELECT DISTINCT
	status
FROM bank.loan
ORDER BY status ASC;

-- Query #5
SELECT
loan_id
FROM bank.loan
WHERE payments = (
	SELECT MAX(payments)
    FROM bank.loan
    );
    
-- Query #6
SELECT
account_id,
amount
FROM bank.loan
ORDER BY account_id ASC
LIMIT 5;

-- Query #7
SELECT
	account_id
FROM bank.loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- QUERY #8
SELECT distinct
	k_symbol
FROM bank.order
ORDER BY k_symbol;

-- QUERY #9 
SELECT 
order_id
FROM bank.order
WHERE account_id = 34;

-- QUERY #10
SELECT DISTINCT
account_id
FROM bank.order
WHERE order_id >= 29540 and order_id <= 29560;

-- QUERY #11
SELECT
amount
FROm bank.order
WHERE account_to = "30067122";

-- QUERY #12
SELECT
trans_id,
date,
type,
amount
FROM bank.trans
WHERE account_id = "793"
ORDER BY date DESC
LIMIT 10;

-- QUERY 13
SELECT
district_id,
COUNT(client_id)
FROM bank.client
WHERE district_id <10
GROUP BY district_id
ORDER BY district_id ASC;

-- QUERY 14
SELECT *
FROM bank.card;

SELECT
type,
COUNT(card_id)
FROM bank.card
GROUP BY type;

-- QUERY 15

SELECT
account_id,
amount
FROM bank.loan
group by account_id, amount
ORDER BY amount DESC
LIMIT 10;

-- QUERY #16

SELECT
date,
count(loan_id)
FROM bank.loan
WHERE date < 930907
GROUP by date, loan_id
order by date DESC;

-- QUERY #17
SELECT 
date,
duration,
count(loan_id)
FROM bank.loan
WHERE date > 971131 and date <= 971231
Group by date, duration
order by date asc, duration asc;

-- QUERY 18

SELECT
account_id,
type,
sum(amount) as total_amount
FROM bank.trans
WHERE account_id = 396
group by type
order by type ASC;