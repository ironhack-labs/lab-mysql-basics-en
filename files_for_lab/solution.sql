### Query 1
SELECT client_id
from client
WHERE district_id = 1
limit 5

### Query 2
SELECT client_id 
FROM client
WHERE district_id = 72
order by client_id DESC
LIMIT  1

### Query 3
SELECT amount 
FROM loan
order by amount ASC
limit 3

### Query 4
SELECT  DISTINCT status 
FROM loan
order by status ASC
limit 3

### Query 5
SELECT   loan_id
FROM loan
order by payments DESC
LIMIT 1

### Query 6
SELECT   account_id, amount
FROM loan
order by account_id ASC
LIMIT 5

### Query 7
SELECT   account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5

### Query 8
SELECT  DISTINCT k_symbol  
FROM "order"
ORDER BY k_symbol ASC

### Query 9

SELECT  DISTINCT order_id  
FROM "order"
WHERE account_id = 34
ORDER BY k_symbol ASC

### Query 10
SELECT  DISTINCT account_id 
FROM "order"
WHERE order_id  BETWEEN 29540  AND 29560
ORDER BY account_id ASC

### Query 11
SELECT  amount
FROM "order"
WHERE account_to = 30067122

### Query 12
SELECT  trans_id, "date", type, amount
FROM trans
WHERE account_ID = 793
ORDER BY "date"  DESC
LIMIT 10

### Query 13
SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

### Query 14
SELECT DISTINCT type, COUNT(*) as AMOUNT
FROM card
GROUP BY type
ORDER BY AMOUNT DESC

### Query 15
SELECT account_id, SUM (amount)
FROM loan
GROUP by account_id
ORDER BY amount DESC
LIMIT 10

### Query 16
SELECT distinct "date", count(payments)
FROM loan
WHERE "date" < 930907
GROUP BY "date"
ORDER BY "date" DESC

### Query 17
SELECT 
    "date", 
    duration, 
    COUNT(*) AS loan_count
FROM 
    loan
WHERE 
    "date" BETWEEN '971201' AND '971231'
GROUP BY 
    "date", duration
ORDER BY 
    "date" ASC, duration ASC;






