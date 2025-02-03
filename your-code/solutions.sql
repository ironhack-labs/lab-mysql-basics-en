SELECT client_id FROM bank.client WHERE district_id = 1 LIMIT 5;
SELECT client_id FROM bank.client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1;
SELECT amount FROM bank.loan ORDER BY amount ASC LIMIT 3;
SELECT DISTINCT status FROM bank.loan ORDER BY status ASC; 
SELECT loan_id FROM bank.loan ORDER BY payments DESC LIMIT 1;
SELECT account_id,amount FROM bank.loan ORDER BY account_id ASC LIMIT 5;
SELECT account_id FROM bank.loan WHERE duration = 60 ORDER BY amount ASC LIMIT 5;
SELECT DISTINCT k_symbol FROM bank.order ORDER BY k_symbol ASC; 
SELECT order_id FROM bank.order WHERE account_id=34; 
SELECT DISTINCT account_id FROM bank.order WHERE order_id BETWEEN 29540 AND 29560; 
SELECT amount FROM bank.order WHERE account_to =  30067122; 
SELECT trans_id,date,type,amount FROM bank.trans WHERE account_id = 793 ORDER BY date DESC LIMIT 10;
SELECT district_id,COUNT(*) AS client_count FROM bank.client WHERE district_id <10 GROUP BY district_id ORDER BY district_id ASC;--#
SELECT type,COUNT(*) FROM bank.card GROUP BY type;
SELECT account_id, SUM(amount) AS total_loan_amount FROM bank.loan GROUP BY account_id ORDER BY total_loan_amount DESC LIMIT 10;
SELECT date, COUNT(*) AS loan_count FROM bank.loan WHERE date < '930907' GROUP BY date ORDER BY date DESC;  
SELECT date, duration, COUNT(*) AS loan_count FROM bank.loan WHERE date BETWEEN '971201' AND '971231' GROUP BY date, duration ORDER BY date ASC, duration ASC;
SELECT account_id, type, SUM(amount) AS total_amount FROM bank.trans WHERE account_id = 396 GROUP BY account_id, type ORDER BY type ASC;