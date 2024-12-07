USE bank;

-- ### Query 1
-- Get the `id` values of the first 5 clients from `district_id` with a value equals to 1.
SELECT c.client_id, c.district_id
FROM client as c
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;



-- Expected result:
-- ```shell
-- 2
-- 3
-- 22
-- 23
-- 28
-- ```

-- ### Query 2
-- In the `client` table, get an `id` value of the last client where the `district_id` equals to 72.
SELECT c.client_id, c.district_id
FROM client as c
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;


-- Expected result:
-- ```shell
-- 13576
-- ```

-- ### Query 3
-- Get the 3 lowest amounts in the `loan` table.
SELECT l.amount
From loan as l
ORDER BY l.amount ASC
LIMIT 3;

-- Expected result:
-- ```shell
-- 4980
-- 5148
-- 7656
-- ```

-- ### Query 4
-- What are the possible values for `status`, ordered alphabetically in ascending order in the `loan` table?
SELECT DISTINCT l.status
FROM loan as l
ORDER BY l.Status ASC;


-- Expected result:
-- ```shell
-- A
-- B
-- C
-- D
-- ```

-- ### Query 5
-- What is the `loan_id` of the highest payment received in the `loan` table?
SELECT loan_id, max(payments) as Highest_Pay 
FROM loan
GROUP BY loan_id, payments
ORDER BY payments DESC
LIMIT 1;

-- Expected result:
-- ```shell
-- 6415
-- ```

-- ### Query 6
-- What is the loan `amount` of the lowest 5 `account_id`s in the `loan` table? Show the `account_id` and the corresponding `amount`
SELECT MIN(account_id), amount
FROM loan as l
GROUP BY account_id, amount
ORDER BY account_id ASC
LIMIT 5;

-- Expected result:
-- ```shell
-- #id     amount
-- 2	    80952
-- 19	    30276
-- 25	    30276
-- 37	    318480
-- 38	    110736
-- ```

-- ### Query 7
-- What are the `account_id`s with the lowest loan `amount` that have a loan `duration` of 60 in the `loan` table?
SELECT account_id, amount
FROM loan
WHERE duration = 60
ORDER BY amount ASC;



-- Expected result:
-- ```shell
-- 10954
-- 938
-- 10711
-- 1766
-- 10799
-- ```

-- ### Query 8
-- What are the unique values of `k_symbol` in the `order` table?
-- Note: There shouldn't be a table name `order`, since `order` is reserved from the `ORDER BY` clause. You have to use backticks to escape the `order` table name.

SELECT DISTINCT k_symbol
FROM `order`
ORDER BY k_symbol ASC;


-- Expected result:
-- ```shell
-- LEASING
-- POJISTNE
-- SIPO
-- UVER
-- ```

-- ### Query 9
-- In the `order` table, what are the `order_id`s of the client with the `account_id` 34?
SELECT order_id, account_id
FROM `order`
WHERE account_id = 34;

-- Expected result:
-- ```shell
-- 29445
-- 29446
-- 29447
-- ```

-- ### Query 10
-- In the `order` table, which `account_id`s were responsible for orders 
-- between `order_id` 29540 and `order_id` 29560 (inclusive)?
SELECT account_id, order_id
FROM `order`
WHERE order_id > 29540 and order_id < 29560
GROUP BY account_id, order_id;

-- Expected result:
-- ```shell
-- 88
-- 90
-- 96
-- 97
-- ```

-- ### Query 11
-- In the `order` table, what are the individual amounts that were sent to (`account_to`) id 30067122?
SELECT amount, account_to 
FROM `order`
WHERE account_to = 30067122;

-- Expected result:
-- ```shell
-- 5123
-- ```

-- ### Query 12
-- In the `trans` table, show the `trans_id`, `date`, `type` and `amount` of the 10 first transactions
--  from `account_id` 793 in chronological order, from newest to oldest.
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
GROUP BY trans_id, date, type, amount
ORDER BY date DESC
LIMIT 10;


-- Expected result:
-- ```shell
-- 3556468	981231	PRIJEM	78.6
-- 233254	981216	VYDAJ	600
-- 233104	981212	VYDAJ	1212
-- 233248	981211	VYDAJ	851
-- 233176	981207	VYDAJ	204
-- 3556467	981130	PRIJEM	75.1
-- 233395	981130	VYDAJ	14.6
-- 233103	981112	VYDAJ	1212
-- 233247	981111	VYDAJ	851
-- 233175	981107	VYDAJ	204
-- ```

-- ### Query 13
-- In the `client` table, of all districts with a `district_id` lower than 10, how many clients are from each `district_id`? 
-- Show the results sorted by the `district_id` in ascending order.
SELECT c.district_id, count(c.client_id) As client_count
FROM client AS c
WHERE  c.district_id < 10
GROUP BY c.district_id
ORDER BY c.district_id ASC;


-- Expected result:
-- ```shell
-- 1	663
-- 2	46
-- 3	63
-- 4	50
-- 5	71
-- 6	53
-- 7	45
-- 8	69
-- 9	60
-- ```

-- ### Query 14
-- In the `card` table, how many cards exist for each `type`? Rank the result starting with the most frequent `type`.
SELECT type, count(card_id)
FROM card
Group BY type;

-- Expected result:
-- ```shell
-- classic	659
-- junior	145
-- gold	88
-- ```

-- ### Query 15
-- Using the `loan` table, print the top 10 `account_id`s based on the sum of all of their loan amounts.
SELECT account_id, SUM(amount)  
FROM loan
GROUP BY account_id, amount
ORDER BY amount DESC
LIMIT 10;


-- Expected result:
-- ```shell
-- 7542	 590820
-- 8926	 566640
-- 2335	 541200
-- 817	 538500
-- 2936	 504000
-- 7049	 495180
-- 10451 482940
-- 6950	 475680
-- 7966	 473280
-- 339	 468060
-- ```

-- ### Query 16
-- In the `loan` table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order.
SELECT date, COUNT(date)
FROM loan 
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- Expected result:
-- ```
-- 930906	1
-- 930803	1
-- 930728	1
-- 930711	1
-- 930705	1
-- ```

-- ### Query 17
-- In the `loan` table, for each day in December 1997, count the number of loans issued for each unique loan duration, 
-- ordered by date and duration, both in ascending order. You can ignore days without any loans in your output.
SELECT date, duration, count(loan_id)
FROM loan
WHERE date > 971130 and date < 980101
GROUP BY date, duration, loan_id
ORDER BY date, duration ASC;

-- Expected result:
-- ```shell
-- 971206	24	1
-- 971206	36	1
-- 971208	12	3
-- 971209	12	1
-- 971209	24	1
-- 971210	12	1
-- 971211	24	1
-- 971211	48	1
-- 971213	24	1
-- 971220	36	1
-- 971221	36	1
-- 971224	60	1
-- 971225	24	1
-- 971225	60	1
-- ```

-- ### Query 18
-- In the `trans` table, for `account_id` 396, sum the amount of transactions for each type (`VYDAJ` = Outgoing, `PRIJEM` = Incoming). 
-- Your output should have the `account_id`, the `type` and the sum of amount, named as `total_amount`. Sort alphabetically by type.
SELECT account_id, type, SUM(amount) as total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type, amount
ORDER BY type ASC;

-- Expected result:
-- ```shell
-- 396	PRIJEM	1028138.6999740601
-- 396	VYDAJ	1485814.400024414
-- ```
