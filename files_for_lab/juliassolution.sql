SELECT client_id
FROM bank.client
WHERE district_id = 1
LIMIT 5;

SELECT MAX(client_id)
FROM bank.client
WHERE district_id = 72;

SELECT loan.amount
FROM bank.loan
ORDER BY loan.amount ASC
LIMIT 3;

SELECT DISTINCT loan.status
FROM bank.loan
ORDER BY loan.status ASC;

SELECT loan_id
FROM bank.loan
WHERE payments = (SELECT MAX(payments) FROM bank.loan);

SELECT account_id, amount
FROM bank.loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

SELECT DISTINCT bank.order.k_symbol
FROM bank.order
ORDER BY bank.order.k_symbol ASC;

SELECT bank.order.order_id
FROM bank.order
WHERE account_id = 34;

SELECT DISTINCT account_id
FROM bank.order
WHERE order_id BETWEEN 29540 AND 29560;

SELECT bank.order.amount
FROM bank.order
WHERE bank.order.account_to = 30067122;

SELECT bank.trans.trans_id, bank.trans.date, bank.trans.type, bank.trans.amount
FROM bank.trans
WHERE account_id = 793
ORDER BY bank.trans.date DESC
LIMIT 10;

SELECT bank.client.district_id, COUNT(bank.client.client_id) AS client_count
FROM bank.client
WHERE bank.client.district_id < 10
GROUP BY bank.client.district_id
ORDER BY bank.client.district_id ASC;

SELECT bank.card.type, COUNT(bank.card.type)
FROM bank.card
GROUP BY bank.card.type
ORDER BY COUNT(bank.card.type) DESC;

SELECT bank.loan.account_id, SUM(bank.loan.amount)
FROM bank.loan
GROUP BY bank.loan.account_id
ORDER BY SUM(bank.loan.amount) DESC
LIMIT 10;

SELECT bank.loan.date, COUNT(bank.loan.loan_id) AS loan_count
FROM bank.loan
WHERE bank.loan.date < 930907
GROUP BY bank.loan.date
ORDER BY bank.loan.date DESC;

SELECT DISTINCT bank.loan.date, bank.loan.duration, COUNT(bank.loan.loan_id) as loan_count
FROM bank.loan
WHERE bank.loan.date >= '971201' AND bank.loan.date <= '971231'
GROUP BY bank.loan.date, bank.loan.duration
ORDER BY bank.loan.date, bank.loan.duration ASC;

SELECT bank.trans.account_id, bank.trans.type, SUM(bank.trans.amount) AS total_amount
FROM bank.trans
WHERE bank.trans.account_id = 396 AND (bank.trans.type = 'VYDAJ' OR bank.trans.type = 'PRIJEM')
GROUP BY bank.trans.account_id, bank.trans.type
ORDER BY bank.trans.type ASC;