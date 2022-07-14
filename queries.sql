-- Count the transactions that are less than $2.00 per cardholder
create view small_transaction as
select name, count(*)
from card_holder as a
join credit_card as b on a.id = b.id_card_holder
join transaction as c on b.card = c.card
where amount < 2.00 
group by name
order by count DESC;

SELECT *
FROM small_transaction

-- What are the top 100 highest transactions made between 7:00 am and 9:00 am?
create view highest_between_7_9 as
SELECT *
FROM transaction AS t
WHERE date_part('hour', t.date) >= 7 AND date_part('hour', t.date) <= 9
ORDER BY amount DESC
LIMIT 100;

SELECT * 
FROM highest_between_7_9

-- Top 5 merchants prone to being hacked using small transactions
create view small_transactions_merchants as 
select name, count(*)
from merchant as a
join transaction as b on a.id = b.id_merchant
where amount < 2.00 
group by name
order by count(*) desc

select * 
from small_transactions_merchants
