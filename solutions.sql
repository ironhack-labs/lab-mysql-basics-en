-- Query 1: Get the `id` values of the first 5 clients from `district_id` with a value equals to 1.

-- Query 2
SELECT district_id, client_id  From client WHERE  client.district_id ==72 ORDER BY client.client_id DESC LIMIT 1;
-- Query 3
SELECT amount  From loan ORDER BY amount ASC LIMIT 3;
-- Query 4
SELECT status  From loan GROUP BY status  ORDER BY status ASC;
-- Query 5
SELECT loan_id From loan WHERE payments = (SELECT MAX(payments) From loan);
-- Query 6
SELECT amount , account_id From loan  ORDER BY account_id ASC LIMIT 5;
-- Query 7
SELECT  account_id  From loan  WHERE duration ==60 ORDER BY amount ASC LIMIT 5;
-- Query 8
SELECT DISTINCT k_symbol FROM 'ORDER';
-- Query 9
SELECT order_id FROM 'ORDER' WHERE account_id == 34;
-- Query 10
SELECT  DISTINCT  account_id FROM 'ORDER' WHERE order_id >"29540" AND order_id <"29560"
-- Query 11
SELECT amount FROM 'ORDER' WHERE account_to == "30067122";
-- Query 12
SELECT trans_id, date, type, amount FROM trans WHERE account_id == "793" ORDER BY date DESC LIMIT 10;
-- Query 13
SELECT district_id,count(district_id)  FROM client WHERE `district_id` <10 GROUP BY district_id ORDER BY district_id ASC;
-- Query 14
SELECT type,count(type) FROM card GROUP BY type ORDER BY count(type) DESC;
-- Query 15
SELECT account_id, amount FROM loan GROUP BY  account_id ORDER BY  sum(amount) DESC LIMIT 10;
-- Query 16
SELECT "date", COUNT(loan_id) AS total_loans FROM loan WHERE "date" < 930907 GROUP BY "date" ORDER BY "date" DESC;
-- Query 17
SELECT "date", duration, COUNT(loan_id) AS loan_count FROM loan WHERE "date" >= 971201 AND "date"<=971231 AND duration not NULL GROUP BY "date" ,duration ORDER BY "date" AND duration ASC

-- Query 18
SELECT account_id, type, sum(amount) AS  total_amount FROM trans WHERE account_id=="396"  GROUP BY type ORDER BY type ASC;

