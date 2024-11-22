--Query 1
--Answer: 
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

--Query 2
--Answer:
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

--Query 3
--Answer:
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

--Query 4
--Answer:
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

--Query 5
--Answer:
SELECT loan_id
FROM loan
WHERE payments = (SELECT MAX(payments) FROM loan);

--Query 6
--Answer:
SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

--Query 7
--Answer:
SELECT  account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

--Query 8
--Answer:
SELECT DISTINCT k_symbol
FROM `order`
ORDER BY k_symbol ASC;

--Query 9
--Answer:
SELECT order_id
FROM `order`
WHERE account_id = 34;

--Query 10
--Answer:
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;


--Query 11
--Answer:
SELECT amount
FROM `order`
WHERE account_to = 30067122;

--Query 12
--Answer:
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

--Query 13
--Answer:
SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;


--Query 14
--Answer:
SELECT type, COUNT(*) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;

--Query 15
--Answer:
SELECT account_id, SUM(amount) AS total_loan_amount
FROM loan
GROUP BY account_id
ORDER BY total_loan_amount DESC
LIMIT 10;

--Query 16
--Answer:
SELECT date, COUNT(*) AS loan_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

--Query 17
--Answer:
SELECT date, duration, COUNT(*) AS loan_count
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;


--Query 18
--Answer:
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;