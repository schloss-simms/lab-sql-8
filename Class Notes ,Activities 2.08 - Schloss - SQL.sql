-- 1
select type as card_type, count(*) as num_issued
from bank.card
group by type
order by num_issued desc;
-- 2
select district_id, count(*) num_customers
from bank.client
group by district_id
order by num_customers desc;
-- 3
select type, round(avg(amount),2) as avg_amount
from bank.trans
group by type
order by avg_amount desc;
-- 4
select type, operation, k_symbol, round(avg(balance),2)
from bank.trans
where k_symbol <> '' and k_symbol <> ' '
group by type, operation, k_symbol
order by type, operation, k_symbol;
-- 1
select district_id, count(*) num_customers
from bank.client
group by district_id
having num_customers > 100
order by num_customers desc;
-- 2
select type, operation, round(avg(amount),2) as avg_amount
from bank.trans
group by type, operation
having avg_amount>10000
order by avg_amount desc;
-- 1
```
select last_name from sakila.actor
group by last_name
having count(*) = 1;
```
-- 2
```
select last_name from sakila.actor
group by last_name
having count(*) > 1;
```
-- 3
```
select staff_id, count(*) from sakila.rental
group by staff_id;
```
-- 4
```
select release_year, count(*) as num_films from sakila.film
group by release_year
order by release_year;
```
-- 5
```
select rating, count(*) as num_films from sakila.film
group by rating;
```
-- 6
```
select rating, avg(length) as avg_duration from sakila.film
group by rating
order by avg_duration desc;
```
-- 7
```
select rating, round(avg(length),2) as avg_duration from sakila.film
group by rating
having avg_duration > 120
order by avg_duration desc;