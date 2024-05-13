USE bank;

/* QUERY 1 */
SELECT client_id FROM client WHERE district_id = 1 LIMIT 5;

/* QUERY 2 */
SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1;

/* QUERY 3 */
SELECT amount FROM loan ORDER BY amount ASC LIMIT 3;

/* QUERY 4 */
SELECT DISTINCT status FROM loan ORDER BY status;

/* QUERY 5 */
SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1;

/* QUERY 6 */
SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5;

/* QUERY 7 */
select account_id from loan where duration = 60 order by amount asc limit 5;

/* QUERY 8 */
select DISTINCT k_symbol from `order` order by k_symbol;

/* QUERY 9 */
select order_id from `order` where account_id = 34;

/* QUERY 10 */
select distinct account_id from `order` where order_id > 29540 and order_id <= 29560;

/* QUERY 11 */
select amount from `order` where account_to = 30067122;

/* QUERY 12 */
select trans_id, date, type, amount from trans where account_id = 793 order by date desc limit 10;

/* QUERY 13 */
select district_id, count(client_id) from client where district_id < 10 group by district_id order by district_id;

/* QUERY 14 */
select type, count(card_id) from card group by type order by count(card_id) desc;

/* QUERY 15 */
select account_id, sum(amount) from loan group by account_id order by sum(amount) desc limit 10;

/* QUERY 16 */
select date, count(loan_id) from loan where date < 930907 group by date order by date desc;

/* QUERY 17 */
select `date`, duration, count(loan_id) from loan where date >= 971201 and date <= 971231 group by date, duration order by date asc, duration asc;

/* QUERY 18 */
select account_id, type, sum(amount) from trans where account_id = 396 group by type order by type;
