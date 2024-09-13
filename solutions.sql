-- Solution Query 1
SELECT client_id FROM client WHERE district_id = 1 LIMIT 5;

-- Solution Query 2
SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1;

-- Solution Query 3
SELECT amount FROM loan ORDER BY amount ASC LIMIT 3;

-- Solution Query 4
SELECT DISTINCT status FROM loan ORDER BY status ASC;

-- Solution Query 5
SELECT loan_id FROM loan WHERE payments = (SELECT MAX(payments) FROM loan)

-- Solution Query 6
SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5;

-- Solution Query 7
SELECT account_id FROM loan WHERE duration = 60 ORDER BY amount ASC LIMIT 5;

-- Solution Query 8
SELECT DISTINCT k_symbol FROM `order` WHERE k_symbol != " " ORDER BY k_symbol ASC;

-- Solution Query 9
SELECT order_id FROM `order` WHERE account_id = 34;

-- Solution Query 10
SELECT DISTINCT account_id FROM `order` WHERE order_id > 29540 AND order_id < 29560;

-- Solution Query 11
SELECT amount FROM `order` WHERE account_to = 30067122;

-- Solution Query 12
SELECT trans_id, date, type, amount FROM trans WHERE account_id = 793 ORDER BY date DESC LIMIT 10;

-- Solution Query 13
SELECT district_id, count(client_id) FROM client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id ASC;

-- Solution Query 14
SELECT type, count(*) FROM card GROUP BY type ORDER BY count() DESC;

-- Solution Query 15
SELECT account_id, SUM(amount) FROM loan GROUP BY account_id ORDER BY SUM(amount) DESC LIMIT 10;

-- Solution Query 16
SELECT date, count(loan_id) FROM loan WHERE date < 930907 GROUP BY date ORDER BY date DESC;

-- Solution Query 17
SELECT date, duration, count(loan_id) FROM loan WHERE date > 971130 AND date < 980101 GROUP BY date, duration ORDER BY date, duration ASC;

-- Solution Query 18
SELECT account_id, type, SUM(amount) AS total_amount FROM trans WHERE account_id = 396 GROUP BY type ORDER BY type ASC;
