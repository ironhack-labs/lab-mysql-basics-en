"Query 1"
SELECT client.client_id, client.district_id
FROM bank.client
WHERE district_id = "1"
LIMIT 5;

"Query 2"
SELECT MAX(client_id) 
FROM bank.client
WHERE district_id = "72";

"Query 3"
SELECT loan.amount
FROM bank.loan
ORDER BY loan.amount ASC
LIMIT 3;

"""Query 4"""
SELECT DISTINCT (status)
FROM bank.loan
ORDER BY loan.status ASC;

"""Query 5"""
SELECT loan.loan_id, loan.payments
From bank.loan
ORDER BY loan.payments DESC
LImit 1;

"""Query 6"""
SELECT loan.account_id, loan.amount
FROM bank.loan
ORDER BY loan.account_id ASC
Limit 5;

"""Query 7"""
SELECT loan.account_id
FROM bank.loan
WHERE duration = "60"
ORDER BY loan.amount ASC
LIMIT 5;

"""Query 8"""
SELECT DISTINCT `order`.k_symbol
FROM bank.`order`;

"""Query 9"""
SELECT `order`.order_id
FROM bank.`order`
WHERE `order`.account_id = "34";

"""Query 10"""
SELECT DISTINCT `order`.account_id
FROM bank.`order`
WHERE order_id > 29540 AND order_id <= 29560;

"""Query 11"""
SELECT `order`.amount
FROM bank.`order`
WHERE `order`.account_to = "30067122";

"""Query 12"""
SELECT trans.trans_id, trans.date, trans.type, trans.amount
FROM bank.trans
WHERE trans.account_id = "793"
ORDER BY date DESC
LIMIT 10;

"""Query 13"""
SELECT client.district_id, COUNT(*) AS CLIENTS_
FROM bank.client
WHERE client.district_id < 10
GROUP BY client.district_id
ORDER BY client.district_id ASC;

"""Query 14"""
SELECT card.type, COUNT(*) AS amount_of_cards
FROM bank.card
GROUP BY card.type
ORDER BY amount_of_cards DESC;

"""Query 15"""
SELECT loan.account_id, SUM(loan.amount) AS total_amount
FROM bank.loan
GROUP BY loan.account_id
ORDER BY total_amount DESC
LIMIT 10;

"""Query 16"""
SELECT loan.date, COUNT(*) AS number_of_loans
FROM bank.loan
WHERE loan.date < 930907
GROUP BY loan.date
LIMIT 5;

"""Query 17"""
SELECT loan.date, loan.duration, COUNT(*) AS no_of_loans
FROM bank.loan
WHERE loan.date <= 971231 AND loan.date >= 971201
GROUP BY  loan.date, loan.duration
ORDER BY loan.date ASC, loan.duration ASC;

"""Query 18"""
SELECT trans.account_id, trans.type, SUM(trans.amount) AS total_amount
FROM bank.trans
WHERE trans.account_id = "396"
GROUP BY trans.account_id, trans.type
ORDER BY trans.type ASC;





