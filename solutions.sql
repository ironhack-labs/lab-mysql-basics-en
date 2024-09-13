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