-- Query 1 solution
SELECT client_id FROM client WHERE district_id == 1 LIMIT 5;

-- Query 2 solution
SELECT client_id FROM client WHERE district_id == 72 ORDER BY client_id DESC LIMIT 1;

-- Query 3 solution
SELECT amount FROM loan ORDER BY amount LIMIT 3;

-- Query 4 solution
SELECT DISTINCT status FROM loan ORDER BY status;

-- Query 5 solution
SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1;

-- Query 6 solution
SELECT account_id, amount FROM loan GROUP BY account_id LIMIT 5;

-- Query 7 solution
SELECT account_id FROM loan WHERE duration == 60 GROUP BY amount LIMIT 5;

-- Query 8 solution
SELECT DISTINCT k_symbol FROM 'order' WHERE k_symbol != " ";

-- Query 9 solution
SELECT order_id FROM 'order' WHERE account_id == 34;

-- Query 10 solution
SELECT DISTINCT account_id FROM 'order' WHERE order_id BETWEEN 29541 AND 29560;

-- Query 11 solution
SELECT amount FROM 'order' WHERE account_to == 30067122;

-- Query 12 solution
SELECT trans_id, date, type, amount FROM trans WHERE account_id == 793 ORDER BY date DESC LIMIT 10;

-- Query 13 solution
SELECT district_id, COUNT(*) FROM client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id;

-- Query 14 solution
SELECT type, count(*) FROM card GROUP BY type ORDER BY count(*) DESC;

-- Query 15 solution
SELECT account_id, SUM(amount) FROM loan GROUP BY account_id ORDER BY SUM(amount) DESC LIMIT 10;

-- Query 16 solution
SELECT date, COUNT(*) FROM loan WHERE date < 930907 GROUP BY date ORDER BY COUNT(*) DESC;

-- Query 17 solution
SELECT date, duration, COUNT(*) FROM loan WHERE date BETWEEN 971201 AND 971231 GROUP BY date, duration ORDER BY date, duration;

-- Query 18 solution
SELECT account_id, type, SUM(amount) as total_amount FROM trans WHERE account_id == 396 GROUP by type ORDER BY type;
