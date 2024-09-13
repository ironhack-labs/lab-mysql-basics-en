-- Query 1
SELECT client_id FROM client WHERE district_id = 1 LIMIT 5;

-- Query 2
SELECT  client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1;

-- Query 3
SELECT amount FROM loan ORDER BY amount ASC LIMIT 3;

-- Query 4
SELECT DISTINCT status from loan order by status ASC;

-- Query 5
Select loan_id from loan order by payments DESC LIMIT 1;

-- Query 6
Select account_id, amount from loan order by account_id  ASC LIMIT 5;

-- Query 7
Select account_id from loan where duration = 60 order by amount asc;

-- Query 8
SELECT DISTINCT k_symbol from 'order' WHERE k_symbol IS NOT NULL AND TRIM(k_symbol) <> '';

-- Query 9
SELECT order_id from 'order'where account_id = 34;

-- Query 10
SELECT account_id from 'order' where order_id BETWEEN 29540 and 29560;

-- Query 11
SELECT amount FROM 'order'  WHERE account_to = 30067122;

-- Query 12
SELECT trans_id, 'date', type, amount from trans where account_id = 793  order by date DESC limit 10;

-- Query 13
SELECT district_id, COUNT(*) AS client_count FROM client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id ASC;

-- Query 14
SELECT type, COUNT(*) AS card_count FROM card GROUP BY type ORDER BY card_count DESC;

-- Query 15
SELECT account_id, SUM(amount) AS total_amount FROM loan GROUP BY account_id ORDER BY total_amount DESC LIMIT 10;

-- Query 16
SELECT date, COUNT(*) AS loan_count FROM loan WHERE date < '930907' GROUP BY date ORDER BY date DESC

-- Query 17: cant figure it out yet

-- Query 18
SELECT account_id, type, SUM(amount) AS total_amount FROM trans WHERE account_id = 396 GROUP BY type ORDER BY type ASC;