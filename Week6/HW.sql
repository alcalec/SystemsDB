--Query 1
create database PracticeMathDB;

--Query 2
create table products(
  Index integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  Name varchar(200),
  Description text,
  Brand varchar(200),
  Category text,
  Price numeric,
  Currency varchar(50),
  Stock integer,
  Color varchar(100),
  Product_Size text,
  Availability varchar(50),
  Added_Date date,
  Internal_ID integer
);
-- These have the same names as the data we are trying to get from the CSV file


--- Create 5 Queries ---
--Query 1-- This shows the total inventory value
select Price, Stock, Price * Stock AS inventory_value
from products;

--Query 2-- This finds the average product price per category
select AVG(Price) as Average_Price
from products;

--Query 3-- This list all products where the price is greater than $500
select Name, Price
from products
where Price > 500;

--Query 4-- This counts how many products in one category
select count(*) AS product_count
from products
where category = 'Kitchen Appliances';

--Query 5-- This shows price of prodcuct in cheapest to most expensive
select Name, Price
from products
order by price ASC;

--- Quick Skim ---
-- One new concept i noticed was join. Thre are a lot of different specific functions we can use to just
-- grab a piece of one table or fully combine them with cross join

-- One thing I have a question on is the JOIN function with linking two tables and the keys. That doesn't
-- make a ton of sense to me.
