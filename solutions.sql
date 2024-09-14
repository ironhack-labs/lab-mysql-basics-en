---query1
SELECT client_id ,district_id 
from client
where district_id = 1;

---query 2
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;


----query 3 
select amount 
From Loan 
order by amount ASC
Limit 3;

---query 4
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

--QUery 5
SELECT loan_id
From loan 
ORDER by payments DESC
Limit 1;

---Query 6 
SELECT account_id AS id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;


---QUery 7

SELECT account_id
FROM loan
WHERE duration = 60
ORDER by amount ASC
LIMIT 5 ;

---query 8 
SELECT DISTINCT k_symbol
FROM `order`;

----query 9
SELECT order_id
FROM `order`
WHERE account_id = 34;

---query 10
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

----query 11 (is there a way to convert float to integer?)
SELECT CAST(amount AS INT) AS amount_int
FROM `order`
WHERE account_to = 30067122;

---query 12
SELECT trans_id, date, type, amount 
FROM trans
WHERE account_id=793
order by date DESC

----quesry 13
SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

---quesry 14
SELECT type, COUNT(*) AS card_type
FROM card
GROUP BY type
ORDER BY card_type


----query 15
SELECT account_id, SUM (amount) AS Summed
FROM loan
GROUP BY account_id
order by Summed DESC
LIMIT 10;

--query 16
SELECT date, COUNT(*) AS loan_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

---query 17 
SELECT date, duration, COUNT(*) AS loan_count
FROM loan
WHERE date BETWEEN '971201' AND '971231'
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

----query 18 
SELECT account_id, 
       CASE 
           WHEN type = 'VYDAJ' THEN 'Outgoing' 
           WHEN type = 'PRIJEM' THEN 'Incoming' 
       END AS type, 
       SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;

