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
  Foreign Key(customer_id) references customers(customer_id)
  );

-- Customer_id linked each order back to a customer
-- The FK constraint prevent orphan records(Can't create an order for a non-existent customer)

-- Inserting sample data
insert into customers("name", email, city)
values
('Alice', 'alice@email.com', 'Boise'),
('Brian', 'brian@emial.com', 'Twin Falls'),
('Carmen', 'carmen@email.com', 'Jerome');

insert into orders(customer_id, product, total)
values
(1, 'Laptop', 999.99),
(1, 'Mouse', 25.50),
(2, 'Headphones', 89.99),
(3, 'Monitor', 199.99);
-- Order's customer_id points to existing customer

-- viewing the Relationship with a JOIN
select
customers.name, --Selecting the name column from the customer table
customers.city, -- Selecting city column
orders.product, --Select product from orders
orders.total --Select total from orders
FROM orders
JOIN customers -- Default join is inner join, matching rows appear
On orders.customer_id=customers.customer_id

-- PK uniquely identifies rows
-- FK links tables together
-- Many relationship types (1:1, 1:M, M:M)
