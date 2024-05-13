-- Query 1
select client_id
from bank.client
where district_id = 1
limit 5

-- Query2
select client_id
from bank.client
where district_id = 72
order by client_id desc
limit 1

-- Query 3
select amount
from bank.loan
order by amount asc
limit 3

-- Query 4
select distinct status
from bank.loan
order by status asc

-- Query 5
select loan_id
from bank.loan
order by payments desc
limit 1

-- Query 6
select account_id, amount
from bank.loan
order by account_id asc
limit 5

-- Query 7
select account_id
from bank.loan
where duration = 60
order by amount asc
limit 5

-- Query 8
select distinct k_symbol
from bank.order
order by k_symbol asc

-- Query 9
select order_id
from bank.order
where account_id = 34

-- Query 10
select distinct account_id
from bank.order
where order_id between 29540 and 29560

-- Query 11
select amount
from bank.order
where account_to = 30067122

-- Query 12
select trans_id, date, type, amount
from bank.trans
where account_id = 793
order by date desc
limit 10

-- Query 13
select distinct district_id, count(client_id) as clients
from bank.client
where district_id < 10
group by district_id
order by district_id

-- Query 14
select distinct type, count(card_id) as total_cards
from bank.card
group by type
order by total_cards desc

-- Query 15
select distinct account_id, sum(amount) as sum_loan_amount
from bank.loan
group by account_id
order by sum_loan_amount desc
limit 10

-- Query 16
select distinct date, count(loan_id) as number_loans
from bank.loan
where date < 930907
group by date
order by date desc

-- Query 17
select distinct date, duration, count(loan_id) as total_loans
from bank.loan
where date like '9712%' and loan_id is not null
group by date, duration
order by date asc, duration asc

-- Query 18
select distinct account_id, type, sum(amount) as total_amount
from bank.trans
where account_id = 396
group by type
order by type asc