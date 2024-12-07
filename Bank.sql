USE bank;
-- 1
SELECT client_id
FROM client
WHERE district_id=1;
-- 2
SELECT client_id
FROM client
WHERE district_id=72
ORDER BY client_id DESC
LIMIT 1;
-- 3
SELECT amount 
FROM loan
ORDER BY amount ASC
LIMIT 3;
-- 4
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;
-- 5
SELECT loan_id
FROM loan
ORDER BY amount DESC
LIMIT 1;
-- 6
SELECT account_id AS id,amount 
FROM loan 
ORDER BY account_id ASC
LIMIT 5;
-- 7
SELECT account_id
FROM loan
WHERE duration=60
ORDER BY amount ASC
LIMIT 5;
-- 8
SELECT DISTINCT k_symbol 
FROM `order`
ORDER BY k_symbol DESC;
-- 9
SELECT order_id
FROM `order`
WHERE account_id=34;
-- 10
SELECT DISTINCT account_id
FROM `order`
WHERE order_id>=29540 AND order_id<=29560;
-- 11
select amount
FROM `order`
WHERE account_to=30067122;
-- 12
SELECT trans_id,date,type,amount
FROM trans
WHERE account_id=793
ORDER BY date DESC
LIMIT 10;
-- 13
SELECT district_id, COUNT(client_id)
FROM client
WHERE district_id<10
GROUP BY district_id
ORDER BY district_id ASC;
-- 14
SELECT `type`, COUNT(`type`)
FROM card
GROUP BY `type`;
-- 15
SELECT account_id,amount
FROM loan
ORDER BY amount DESC
LIMIT 10;
-- 16
SELECT date , COUNT(loan_id)
FROM loan
WHERE  date<930907
GROUP BY date
ORDER BY date DESC;
-- 17 
SELECT DISTINCT date,duration,COUNT(loan_id)
FROM loan
where date >971200 AND date < 971231 
GROUP BY date,duration
ORDER BY date ASC , duration ASC;
-- 18
 SELECT account_id, `type`,SUM(amount) AS total_amount
 FROM trans
 WHERE account_id=396
 GROUP BY  account_id,`type`
 ORDER BY `type` ASC;