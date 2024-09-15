--
-- Query 1
--
SELECT client_id FROM client WHERE district_id=1 LIMIT 5

--
-- Query 2
--
SELECT client_id FROM client WHERE district_id=72 ORDER BY client_id DESC LIMIT 1 

--
-- Query 3
--
SELECT amount FROM loan ORDER BY amount ASC LIMIT 3 

--
-- Query 4
--
SELECT DISTINCT status FROM loan ORDER BY status ASC

--
-- Query 5
--
SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1

--
-- Query 6
--
SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5

--
-- Query 7
--
SELECT account_id FROM loan WHERE duration=60 ORDER BY amount LIMIT 5

--
-- Query 8
--
SELECT DISTINCT k_symbol FROM `order` ORDER BY k_symbol

--
-- Query 9
--
SELECT order_id FROM `order` WHERE account_id=34

--
-- Query 10
--
SELECT DISTINCT account_id FROM `order` WHERE order_id BETWEEN 29540 AND 29560

--
-- Query 11
--
SELECT amount FROM `order` WHERE account_to=30067122

--
-- Query 12
--
SELECT trans_id, date, type, amount FROM trans WHERE account_id=793 ORDER BY date DESC LIMIT 10

--
-- Query 13
--
SELECT DISTINCT district_id, COUNT(district_id) AS qty FROM client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id ASC 

--
-- Query 14
--
SELECT DISTINCT type, COUNT(type) AS qty FROM card GROUP BY type ORDER BY qty DESC 

--
-- Query 15
--
SELECT account_id, SUM(amount) AS sum FROM loan GROUP BY account_id ORDER BY sum DESC LIMIT 10

--
-- Query 16
--
SELECT date, COUNT(*) AS count FROM loan WHERE date<930907 GROUP BY date ORDER BY date DESC

--
-- Query 17
--
SELECT DISTINCT date, duration, COUNT(*) AS count FROM loan WHERE date LIKE "9712%" GROUP BY date, duration ORDER BY date ASC, duration ASC

--
-- Query 18
--
SELECT account_id, type, SUM(amount) AS total_amount FROM trans WHERE account_id=396 GROUP BY type