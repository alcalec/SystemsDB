-- Primary & Foreign Keys
-- Keys connect relational databases within the multiple tables

-- Primary Key (PK): A column that uniquely identify a row in a table

-- Foreign Key(FK): A column in a table that refers to another PK, A PK in another table

-- PK/FK parent-child relationship - parent has multiple children, each child points to one parent

-- Creating parent table (customers)
create table customers(
  customer_id serial Primary Key,
  name text,
  email text,
  city text);

-- Serial automatically numbers new record
-- PK ensurces each id is unique and not null

--Creating the Child Table (Orders)
create table orders(
  id serial Primary Key,
  customer_id int,
  product text,
  total numeric(10,2),
  Foreign Key(customer_id) references customers
  );
