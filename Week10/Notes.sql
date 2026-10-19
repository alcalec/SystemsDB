create table products(
"Index" integer PRIMARY KEY,
"Name" varchar(100),
Description text,
Brand text,
Category varchar(67),
price numeric(10,2),
Currency varchar(5),
Stock integer,
EAN text,
Color text,
"Size" text,
Availability text,
Internal_ID integer);

-- Functions- Persom specific task in query

-- Common Built in
-- Round(), round number. SELECT ROUND(number,decimal)
-- CEIL()/FLOOR(), round up or down. SELECT CEIL(2.1) -> 3

-- Text functions
-- UPPER(text)/LOWER(text), converts text to uppercase/lowercase
-- LENGTH(text), Returns character count

-- DATE functions
-- NOW(), current timestamp
-- CURRENT_DATE, today's date
-- AGE(), returns difference between two dates. SELECT AGE('2025-10-20', '2005-05-15') New, Old
-- Used for reports and logs

-- Average price by category, round it
SELECT category
ROUND(AVG(price),2) as avg_price
from products
group by category
order by avg_price DESC;

-- VIEWS
-- View is a saved SQL Query that acts like a virtual table
-- It doesn't store new data, query definition

creatE view product_summary AS
SELECT category
ROUND(AVG(price),2) as avg_price
SUM(stock) AS total_stock
from products
group by category
order by avg_price DESC;

-- Views just create a shortuct.
select * from proDUCt_SUMMARY
-- TO update
-- REPLACE VIEW products_summary
-- AS

-- to delete view, drop VIEW
DROP VIEW "Name of view" - no quotes
-- Use views to simplify, avoid retyping, consistency, restrict user access
