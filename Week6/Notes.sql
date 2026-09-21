-- TWO ways to import CSV Files
-- 1st Option is with SQL
-- copy products_raw FROM 'C:\Users\450372\Downloads\products_raw.csv' DELIMITER ',' CSV HEADER;


--copy products_raw from 'C:\Users\450372\Downloads\products_raw.csv' with
--(format CSV, header);
select * from products_raw LIMIT 5; --Limit puts a constraint on how rows appear

--Steps to import CSV Files
-- Step 1 make table template (Creating table in relation to CSV column names and data types)
--Step 2 Import using GUI (Right click on table, click import/expert data)
--Confirm file name, delimiter, header is turned on
-- After import is successful view table via query select * from table_name LIMIT 5

-- Basic Arithmetic in Queries
select price, stock, price * stock AS inventory_value
from products_raw limit 5;

--Built in functions that postgre has
--SUM
select SUM(price*stock)as total_inventory_value
from products_raw

--AVG, average product price
select AVG(price) as Average_Price
from products_raw

--Finding the highest and lowest value, we will use MIN and MAX
select MIN(price), MAX(price)
from products_raw

--How to see how mnay products are in a dataset?
--Count
select count(*)
from products_raw

--Filtering with MATH
--Show me products that cost more than $500
select * from products_raw
where price > 500;

-- Categories with total stock > 200
select category, SUM(stock)
from products_raw
Group by category
having sum(stock) > 5;
