SELECT client_id 
 FROM client
 WHERE district_id  = 1 
 LIMIT 5
;

SELECT client_id 
 FROM client
 WHERE district_id  = 72 
 ORDER BY client_id DESC
 LIMIT 1
;

SELECT amount 
 FROM loan
 ORDER BY amount ASC
 LIMIT 3
;

SELECT DISTINCT status 
 FROM loan
 ORDER BY status ASC
;

SELECT loan_id 
 FROM loan
 WHERE payments =
 (SELECT MAX(PAYMENTS) FROM loan)
;

SELECT account_id, amount
 FROM loan
 ORDER by account_id 
 LIMIT 5 
;

SELECT account_id 
 FROM loan
 WHERE duration = 60 
 ORDER by amount
;

SELECT DISTINCT k_symbol 
 FROM 'order' 
 ORDER by k_symbol ASC
;

SELECT order_id
 FROM 'order' 
 WHERE account_id = 34
;

SELECT account_id
 FROM 'order'
 WHERE order_id BETWEEN 29540 AND 29560
;

SELECT amount
 FROM 'order'
 WHERE account_to = 30067122
;

SELECT trans_id, date, type, amount
 FROM trans 
 WHERE account_id = 793 
 ORDER by date DESC 
 LIMIT 10
;

SELECT district_id, count(client_id)
 FROM client
 WHERE district_id < 10
 GROUP by district_id 
 ORDER by district_id ASC
;

SELECT type, count(card_id)
 FROM card
 GROUP by type 
 ORDER by card_id DESC
;

SELECT account_id, amount
 FROM loan
 GROUP by account_id
 ORDER by amount DESC
 LIMIT 10
;
 
 SELECT date, count(loan_id)
  FROM loan
  WHERE date < 930907
  GROUP by date
  ORDER by date DESC
 ;
 
 SELECT date,duration,count(loan_id)
  FROM loan
  WHERE date BETWEEN 971201 and 971231
  GROUP by date, duration
  ORDER by date ASC, duration ASC
 ;
 
SELECT account_id, type, sum(amount) AS total_amount
 FROM trans 
 WHERE account_id = 396
 GROUP by type
 ORDER by type ASC
;