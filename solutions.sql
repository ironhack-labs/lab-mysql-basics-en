##select * from bank.account 
##select * from bank.loan;
##select * from bank.order;
##select * from bank.trans;
##select * from bank.client;
##select * from bank.card;

##1 Get the id values of the first 5 clients from district_id with a value equals to 1.
select client_id from bank.client where district_id = 1 limit 5;

##2 In the client table, get an id value of the last client where the district_id equals to 72.
select client_id from bank.client where district_id = 72 order by client_id desc limit 1;

##3 Get the 3 lowest amounts in the loan table.
select amount from bank.loan order by amount asc limit 3; ##order by = set on the column. asc = from lowest to highest

##4 What are the possible values for status, ordered alphabetically in ascending order in the loan table?
select distinct status from bank.loan order by status asc; ## distinct = only selects once, eliminates duplicates

##5 What is the loan_id of the highest payment received in the loan table?
select loan_id from bank.loan where payments= (select max(payments) from bank.loan); #the additional select retrieves the maximum amount of the loan in the amount table. 

##6 What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount
select account_id, amount from bank.loan order by account_id asc limit 5; # add "," to include other columns

##7 What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?
select account_id from bank.loan where duration = 60 order by amount asc limit 5; # order is select-from-where-orderby-asc-limit; order by = Orders the results numerically

##8 What are the unique values of k_symbol in the order table? Note: There shouldn't be a table name order, since order is reserved from the ORDER BY clause. You have to use backticks to escape the order table name.
select distinct k_symbol from bank.order order by k_symbol asc;

##9 In the order table, what are the order_ids of the client with the account_id 34?
select order_id from bank.order where account_id = 34;

##10 In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?
select distinct account_id from bank.order where order_id >= 29540 and order_id <= 29560; # and= in between

##11 In the order table, what are the individual amounts that were sent to (account_to) id 30067122?
select amount from bank.order where account_to = 30067122;

##12 In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.
select trans_id, date, type, amount from bank.trans where account_id = 793 order by date desc limit 10; #desc= biggest to smallest

##13 In the client table, of all districts with a district_id lower than 10, how many clients are from each district_id? Show the results sorted by the district_id in ascending order.
select district_id, count(*) as district_id_count from bank.client where district_id <10 group by district_id order by district_id; #count(*)=counts how many employees have each title; Group by= Groups the results by each distinct, allowing count(*) to operate within these groups.

##14 In the card table, how many cards exist for each type? Rank the result starting with the most frequent type.
select type, count(*) as type_count from bank.card group by type order by type_count desc;

##15 Using the loan table, print the top 10 account_ids based on the sum of all of their loan amounts.
select account_id, sum(amount) as best_amount from bank.loan group by account_id order by best_amount desc limit 10;

##16 In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order.
select date, count(*) as loan_count from bank.loan where date < 930907 group by date order by date desc;

##17 In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, ordered by date and duration, both in ascending order. You can ignore days without any loans in your output. (971200)
select date, duration, count(*) as Dec_count from bank.loan where date >= 971200 and date <= 971225 group by date, duration order by date asc, duration asc;

##18 In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming). Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type.
select account_id, type, sum(amount) as total_amount from bank.trans where account_id = 396 and type in ('VYDAJ', 'PRIJEM') group by account_id, type order by type asc;
