select client_id
from bank.client
where district_id = 1
order by client_id
limit 5;

select max(client_id) as last_client
from bank.client
where district_id = 72; 

with ranking as (
select loan_id, 
       amount, 
       rank() over (order by amount asc) as loan_rank
from bank.loan)
select amount from ranking
where loan_rank <= 3;


select distinct status
from bank.loan
order by status;


select loan_id
from bank.loan 
where payments = (select max(payments) from bank.loan);


with ranking as (
select account_id, 
       amount, 
       rank() over (order by account_id asc) as loan_rank
from bank.loan)
select account_id, amount from ranking
where loan_rank <= 5;


with cte as (
select account_id,amount, dense_rank() over (order by amount asc) amt_rank
from bank.loan 
where duration = 60)
select account_id
from cte 
where amt_rank <= 5;


select distinct k_symbol
from bank.`order`
where k_symbol is not null
order by k_symbol;

select order_id
from bank.`order`
where account_id = 34;

select distinct account_id
from bank.`order`
where order_id between 29540 and 29560;


select amount
from bank.`order`
where account_to = 30067122;


select trans_id, date, type, amount
from bank.trans
where account_id = 793
order by date desc
limit 10;

select district_id , count(client_id) as num_clients
from bank.client
where district_id < 10
group by district_id
order by district_id;

select type, count(card_id) as num_cards
from bank.card
group by type
order by num_cards desc;


select account_id , sum(amount) as loan_amount
from bank.loan
group by account_id
order by loan_amount desc
limit 10;

select date, count(loan_id) as loan_issued_cnt
from bank.loan
where date < 930907
group by date 
order by date desc;

select date, duration, count(distinct loan_id) as loan_issued_cnt
from bank.loan
where date between 971201 and 971231
group by  date, duration
order by date, duration;

select account_id, type, sum(amount) total_amount
from bank.trans
where account_id = 396
group by  account_id, type;



