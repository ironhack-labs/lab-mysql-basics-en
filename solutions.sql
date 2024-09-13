-- Query 1 solution
SELECT client_id FROM client WHERE district_id == 1 LIMIT 5;

-- Query 2 solution
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;
-- Query 3 solutio
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

-- Query 4 solution
SELECT status
FROM loan
GROUP by status
ORDER BY status ASC
;

-- Query 5 solution
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1
;

-- Query 6 solution
SELECT account_id, amount
FROM loan
ORDER BY account_id asc
LIMIT 5
;

-- Query 7 solution
SELECT account_id
FROM loan
WHERE duration == 60
ORDER BY amount asc
LIMIT 5 
;
-- Query 8 solution
SELECT k_symbol
FROM `order`
GROUP BY k_symbol
;

-- Query 9 solution
SELECT order_id
FROM `order`
WHERE account_id ==34
	;

-- Query 10 solution
SELECT account_id
FROM `order`
WHERE order_id >= 29540 AND order_id <= 29560
GROUP by account_id;

-- Query 11 solution
SELECT amount
FROM `order`
WHERE account_to == 30067122


-- Query 12 solution
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id == 793
ORDER BY date DESC
LIMIT 10
;


-- Query 13 solution
SELECT district_id, COUNT(client_id)
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC
LIMIT 10;

-- Query 14 solution
SELECT type, COUNT(type)
FROM card
GROUP BY type
;
-- Query 15 solution
SELECT account_id, sum(amount)
FROM loan
GROUP BY account_id
ORDER BY sum(amount) DESC
LIMIT 10
;
-- Query 16 solution
SELECT date, count(date)
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC

;
-- Query 17 solution
SELECT date, duration, count(duration)
FROM loan
WHERE date LIKE 9712%
GROUP BY date, duration
ORDER BY date ASC

;
-- Query 18 solution
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;
