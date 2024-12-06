
SELECT client_id FROM client WHERE district_id = 1 LIMIT 5 ;

SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1 ;

SELECT amount FROM loan ORDER BY amount LIMIT 3;

SELECT DISTINCT status FROM loan ORDER BY status;

SELECT loan_id FROM loan ORDER BY payments DESC LIMIT  1;

SELECT account_id, amount FROM loan ORDER BY account_id LIMIT 5;

SELECT account_id FROM loan WHERE duration = 60 ORDER BY amount LIMIT 5;

SELECT DISTINCT k_symbol FROM `order` WHERE k_symbol <> "" ORDER BY k_symbol;

SELECT order_id FROM `order` WHERE account_id = 34;

SELECT DISTINCT account_id FROM `order` WHERE order_id >= 29540 and order_id <= 29560 ;

SELECT amount FROM `order` WHERE account_to = 30067122 ;

SELECT trans_id, `date`, `type`, amount FROM trans WHERE account_id = 793 ORDER BY `date` DESC LIMIT 10;

SELECT district_id, COUNT(client_id) FROM client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id;

SELECT `type`, COUNT(card_id) FROM card GROUP BY `type` ORDER BY COUNT(card_id) DESC;

SELECT account_id, amount FROM loan ORDER BY amount DESC LIMIT 10;

SELECT date, COUNT(loan_id) FROM loan WHERE `date` < 930907 GROUP BY `date`  ORDER BY `date` DESC;

SELECT `date`, duration, count(loan_id) FROM loan WHERE `date` BETWEEN 971201 AND 971231 GROUP BY `date`, duration ORDER BY `date`, duration;

SELECT account_id, `type`, SUM(amount) as total_amount FROM trans WHERE account_id = 396 GROUP BY `type`;