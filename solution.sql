--Solution 1 
SELECT client_id 
FROM client 
WHERE district_id == 1 
limit 5;

--Solution 2
SELECT client_id
FROM client
WHERE district_id == 72
order by client_id DESC
limit 1;

--Solution 3
SELECT amount
FROM loan
order by amount ASC
LIMIT 3;

--Solution 4
SELECT DISTINCT status
from loan
ORDER BY status ASC;

--Solution 5
SELECT loan_id
from loan
where payments
order by payments DESC
LIMIT 1;

--Solution 6
SELECT amount
FROM loan
WHERE loan_id AND amount
order by account_id ASC
LIMIT 5;

--Solution 7 
SELECT account_id
FROM loan
WHERE duration == 60 order by amount ASC
LIMIT 5

--Solution 8 
SELECT DISTINCT k_symbol
FROM `order`
WHERE k_symbol IS NOT NULL AND TRIM(k_symbol) <> ''
order by k_symbol ASC;

--Solution 9
SELECT order_id
FROM `order`
WHERE account_id == 34
order by order_id ASC

--Solution 10
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 and 29560 

--Solution 11
SELECT amount
FROM `order`
WHERE account_to == 30067122

--Solution 12
SELECT trans_id, date, type, amount 
from trans
WHERE account_id == 793
order by date DESC

--Solution 13
SELECT district_id, COUNT(*)
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

--Solution 14
SELECT type, count(*)
FROM card
WHERE issued
GROUP BY type
ORDER BY issued ASC

--Solution 15
SELECT account_id, SUM(amount)
FROM loan
GROUP BY account_id
ORDER BY amount DESC
LIMIT 10;

--Solution 16
SELECT date, COUNT(*) 
FROM loan
WHERE date <930907
GROUP BY date
ORDER BY date

--Solution 17
SELECT date, duration, COUNT(*)
FROM loan
WHERE date LIKE "9712%" 
GROUP BY date, duration
ORDER BY date ASC, duration ASC;