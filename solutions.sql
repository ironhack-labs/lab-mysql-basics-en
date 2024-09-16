SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY district_id 
LIMIT 5;


SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY district_id DESC 
LIMIT 1;


SELECT amount
FROM loan
ORDER BY amount
LIMIT 3;


SELECT DISTINCT status
FROM loan
ORDER BY status ASC
LIMIT 4;


SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1 ;


SELECT account_id, amount
FROM loan
ORDER BY account_id 
LIMIT 5;

 
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount 
LIMIT 5;

SELECT DISTINCT  k_symbol
FROM  'ORDER'
WHERE k_symbol != ' '
order by k_symbol ASC;


SELECT DISTINCT  order_id
FROM  'ORDER'
WHERE account_id = 34;


SELECT DISTINCT  account_id
FROM  'ORDER'
WHERE order_id BETWEEN 29540 and  29560;


SELECT amount
FROM  'ORDER'
WHERE account_to = 30067122;


SELECT trans_id,date, type,amount
from trans
where account_id=793
order by date DESC
LIMIT 10;


SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;


SELECT type, COUNT(*) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;


SELECT account_id, SUM(amount) AS total_loan_amount
FROM loan
GROUP BY account_id
ORDER BY total_loan_amount DESC
LIMIT 10;


SELECT date, COUNT(*) AS loan_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;


SELECT date, duration, COUNT(*) AS loan_count
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;


SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;


