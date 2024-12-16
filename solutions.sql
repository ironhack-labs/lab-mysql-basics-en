/* Q1 */
SELECT client_id
from bank.client
WHERE district_id = 1
ORDER BY client_id
LIMIT 5;


/* Q2 */
SELECT client_id
FROM bank.client
WHERE district_id=72
ORDER BY client_id DESC
LIMIT 1;

/* Q3 */
SELECT amount 
FROM bank.loan
ORDER BY amount ASC
limit 3;

/* Q4 */
SELECT DISTINCT status
from bank.loan
ORDER BY status ASC

/* Q5 */
SELECT loan_id
FROM bank.loan
ORDER BY payments DESC
LIMIT 1


/* Q6 */
SELECT account_id, amount
FROM bank.loan
ORDER BY account_id ASC	
LIMIT 5

/*	Q7 */
SELECT account_id 
FROM bank.loan
WHERE duration =60
ORDER BY amount ASC

/* Q8 */
SELECT DISTINCT k_symbol 
FROM bank.order

/* Q9 */
SELECT order_id
FROM bank.order
WHERE account_id=34

/* Q10 */
SELECT DISTINCT account_id
FROM bank.order
WHERE order_id BETWEEN 29540 AND 29560;

/* Q11 */
SELECT amount
FROM bank.order
WHERE account_to = 30067122;

/* Q12 */
SELECT trans_id, date, type, amount
FROM bank.trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10

/* Q13 */
SELECT district_id, COUNT(*) AS client_count
FROM bank.client
WHERE district_id <10
GROUP BY district_id
ORDER BY district_id ASC

/* Q14 */
SELECT type, COUNT(*) AS card_count
FROM bank.card
GROUP  BY type
ORDER BY card_count DESC;

/* Q15 */
SELECT account_id, SUM(amount) AS total
FROM bank.loan
GROUP BY account_id
ORDER BY total DESC
LIMIT 10;

/* Q16 */
SELECT date, COUNT(*) AS loan_count
FROM bank.loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

/* Q17 */
SELECT date, duration, COUNT(*) AS loan_duration
FROM bank.loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

/* Q18 
In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming). 
Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type.*/
SELECT account_id, type, SUM(amount) AS total_amount
FROM bank.trans	
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;

