--Query 1
create database PracticeMathDB;

--Query 2
create table ?(

);
-- These have the same names as the data we are trying to get from the CSV file


--- Create 5 Queries ---
--Query 1-- This shows the total inventory value
select price, stock, price * stock AS inventory_value
from ?

--Query 2-- This finds the average product price per category
select AVG(price) as Average_Price
from ?

--Query 3-- This list all products where the price is greater than $500

from ?

--Query 4-- This counts how many products in one category
sleect count(?)
from ?

--Query 5-- This shows price of prodcuct in cheapest to most expensive
select price, item/prouct?
from ?
order by price ASC

--- Quick Skim ---
-- One new concept i noticed was join. Thre are a lot of different specific functions we can use to just
-- grab a piece of one table or fully combine them with cross join

-- One thing I have a question on is the JOIN function with linking two tables and the keys. That doesn't
-- make a ton of sense to me.
