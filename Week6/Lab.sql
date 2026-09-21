create table product(
  Index integer,
  Name text,
  Description text,
  Brand text,
  Category text,
  Price numeric,
  Currency varchar(20),
  Stock integer,
  EAN bigint,
  Color text,
  Size varchar(20),
  Availability text,
  Internal_ID integer
  );

select price, stock, price * stock AS inventory_value
from product limit 5;

select AVG(price) as Average_Price
from product;

select MIN(price), MAX(price)
from product

select count(*)
from product
