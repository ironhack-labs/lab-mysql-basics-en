SELECT client_id FROM client WHERE district_id = 1 LIMIT 5;
SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1;
SELECT amount FROM loan ORDER BY  amount ASC LIMIT 3;
SELECT DISTINCT status FROM loan ORDER BY status ASC;
SELECT loan_id FROM loan ORDER BY amount DESC LIMIT 1;
SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5;
SELECT account_id FROM loan WHERE duration = 60 ORDER BY amount ASC LIMIT 5;
SELECT DISTINCT k_symbol FROM `order`;
SELECT order_id FROM `order` WHERE account_id = 34;
SELECT DISTINCT account_id FROM `order` WHERE order_id >= 29540 AND order_id <= 29560;
SELECT DISTINCT amount FROM `order` WHERE account_to = 30067122;
SELECT trans_id, date, type, amount FROM trans WHERE account_id = 793 LIMIT 10;
SELECT * FROM client WHERE district_id < 10;
SELECT district_id, COUNT(*) as client_count
 FROM client 
 WHERE district_id < 10 
 GROUP BY district_id;
SELECT type, COUNT(*) as card_count
 FROM card 
 GROUP BY type
 ORDER BY card_count DESC;
SELECT account_id, SUM(amount) as total_loan
 FROM loan 
 GROUP BY account_id
 ORDER BY total_loan DESC
 LIMIT 10;
SELECT date, duration, COUNT(loan_id) as loan_count
 FROM loan 
 WHERE date >= 971201 AND date <= 971231
 GROUP BY date, duration
 ORDER BY date ASC, duration ASC;
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;
