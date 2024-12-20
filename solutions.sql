SELECT * from bank

# Query 1
SELECT client_id from bank.client 
WHERE district_id = 1
LIMIT 5;

# Query 2
SELECT client_id from bank.client 
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

# Query 3
SELECT amount from bank.loan 
ORDER BY amount ASC
LIMIT 3;

# Query 4
SELECT DISTINCT status from bank.loan 
ORDER BY status ASC; 

# Query 5
SELECT loan_id from bank.loan 
ORDER BY payments DESC
LIMIT 1;

# Query 6
SELECT account_id, amount from bank.loan
ORDER BY account_id ASC
LIMIT 5; 

# Query 7
SELECT account_id from bank.loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5; 

# Query 8
SELECT DISTINCT k_symbol from bank.order
ORDER BY k_symbol ASC 

# Query 9
SELECT order_id from bank.order
WHERE account_id = 34
ORDER BY order_id ASC; 

# Query 10
SELECT DISTINCT account_id from bank.order
WHERE order_id >= 29540 and order_id <= 29560
ORDER BY account_id ASC;

# Query 11
SELECT amount from bank.order
WHERE account_to = 30067122
ORDER BY amount DESC;

# Query 12
SELECT trans_id, date, type, amount from bank.trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10; 

# Query 13 
SELECT district_id, COUNT(client_id) AS total_clients FROM bank.client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id;

# Query 14
SELECT type, count(card_id) AS total_cards
FROM bank.card
GROUP BY type
ORDER BY total_cards DESC;

# Query 15
SELECT account_id, sum(amount) AS sum_of_loans FROM bank.loan
GROUP BY account_id
ORDER BY sum_of_loans DESC
LIMIT 10; 

# Query 16
SELECT date, count(loan_id) AS loans_per_day FROM bank.loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC; 

-- In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, 
-- ordered by date and duration, both in ascending order. You can ignore days without any loans in your output.
# Query 17
SELECT date, duration, COUNT(loan_id) AS loans_per_duration FROM bank.loan
WHERE date >= 971201 and date <980101
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

-- In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming). 
-- Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type.
# Query 18
SELECT type, SUM(amount) AS total_amount FROM bank.trans
WHERE account_id = 396
GROUP BY account_id, type 
ORDER BY type ASC;