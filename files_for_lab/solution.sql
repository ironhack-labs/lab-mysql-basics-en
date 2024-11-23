# query 1

SELECT 
	client_id, district_id
FROM 
	client
WHERE 
	district_id == 1
limit 
	5;

# query 2

SELECT 
	client_id, district_id
FROM 
	client
WHERE 
	district_id == 72
ORDER BY client_id DESC
LIMIT 1;
		
# query 3

SELECT 
	amount
FROM 
	loan
ORDER BY amount ASC
Limit 3;
	
	
# query 4

SELECT 
	DISTINCT status
FROM 
	loan
ORDER BY status ASC

# query 5

SELECT 
	 loan_id
FROM 
	loan
WHERE 	payments =  (SELECT max(payments) from loan);

# query 6:

SELECT 
	 account_id, amount
FROM 
	loan
	ORDER by account_id ASC
	LIMIT 5;

# query 7

SELECT 
	 account_id
FROM 
	loan

	WHERE duration = 60
	ORDER by amount ASC
	LIMIT 5;

# query 8

SELECT 
	DISTINCT k_symbol
FROM
	`order`
    WHERE `k_symbol` <> ' '
	ORDER by k_symbol ASC;

# query 9

SELECT 
	order_id
FROM
	`order`
	Where account_id = 34; 

	
# query 10

SELECT 
	DISTINCT account_id
FROM
	`order`
	Where order_id > 29540 and order_id <= 29560;

# query 11

SELECT 
	CAST( amount as INT)
FROM
	`order`
	WHERE account_to = 30067122;
	
# query 12

SELECT 
	trans_id, `date`, type, amount
FROM
	trans
	WHERE account_id = 793
	ORDER by `date` DESC
	Limit 10;

# query 13

SELECT 
	DISTINCT district_id, count(client_id)
FROM
	client
WHERE district_id <10
GROUP BY district_id
Order by district_id ASC 

# query 14

SELECT 
	type,  count(*) 
FROM
	card
GROUP by type	
ORDER by count(*) DESC
 
# query 15 

SELECT 
	 account_id, sum(amount)
FROM
	loan
Group by account_id
ORDER BY sum(amount) DESC 
LIMIT 10;

# query 16

SELECT 
	 date, count(*) AS count
FROM
	loan
	Where date < '930907' 
Group by date	
ORDER BY 
	date DESC;

# Query 17

SELECT 
	 date,
	 duration,
	 count(*) as loan_count 
FROM
	loan
Where date like  '9712%'
Group by date, duration
ORDER BY
    date ASC,
    duration ASC;

# query 18

SELECT 
    account_id, 
    type, 
    SUM(amount) AS total_amount
FROM 
    trans
WHERE 
    account_id = 396
GROUP BY 
    account_id, type
ORDER BY 
    type ASC;

    



	




