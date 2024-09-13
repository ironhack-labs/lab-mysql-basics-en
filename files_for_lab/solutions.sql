--SQL Labs1 solutions

-- Solution to query 1
SELECT client_id FROM client WHERE district_id = 1 LIMIT 5;

-- Solution to query 2
SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1;

-- Solution to query 3
SELECT amount FROM loan ORDER BY amount ASC LIMIT 3;

-- Solution to query 4
SELECT DISTINCT status FROM loan ORDER BY status ASC;

-- Solution to query 5
SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1;

-- Solution to query 6
SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5;

-- Solution to query 7
SELECT account_id FROM loan WHERE duration = 60 ORDER BY amount ASC

-- Solution to query 8 "IS REURNING EMPTY ROW"
SELECT DISTINCT k_symbol FROM `order` WHERE  k_symbol != ' ';

-- Solution  to query 9
SELECT order_id FROM `order` WHERE account_id = 34;

-- Solution to query 10
SELECT DISTINCT account_id FROM `order` WHERE order_id BETWEEN "29540" AND "29560";

-- Solution to query 11
SELECT amount FROM `order` WHERE account_to = 30067122;

-- Solution to query 12
SELECT trans_id, date, type, amount FROM trans WHERE account_id = 793 ORDER BY date DESC LIMIT 10;

-- Solution to query 13
SELECT district_id, COUNT(*) AS num_clients FROM client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id ASC;

-- Solution to query 14
SELECT type, COUNT(*) AS card_types FROM card GROUP BY type ORDER BY card_types DESC;

-- Solution to query 15
SELECT account_id, SUM(amount) AS loan_amount FROM loan GROUP BY account_id ORDER BY loan_amount DESC LIMIT 10;

-- Solution to query 16
SELECT date, COUNT(*) AS loans_num FROM loan WHERE date < 930907 GROUP BY date ORDER BY date DESC;

-- Solution to query 17
SELECT date, duration, COUNT(*) AS num_loans FROM loan WHERE date > 971130 AND date < 971231 GROUP BY date, duration ORDER BY date ASC, duration ASC

-- Solution to query 18
SELECT account_id, type, SUM(amount) AS total_amount FROM trans WHERE account_id = 396 GROUP BY type ORDER BY type ASC;
