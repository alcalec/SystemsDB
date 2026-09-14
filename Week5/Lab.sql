--Query 1
CREATE DATABASE week5;

--Query 2
CREATE TABLE products (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    product_name varchar(100),
    quantity integer
);

--Query 3
INSERT INTO products (product_name, quantity)
VALUES
    ('Orange', 10),
    ('Notebook', 8),
    ('Pencil', 5),
    ('Apple', 12);

--Query 4
SELECT *
FROM products;

--Query 5
alter table products
add column description char(30),
add column price numeric(7,2),
add column rating real,
add column last_updated timestamp with time zone,
add column in_stock boolean;

--Query 6
update products
set description = 'Orange Fruit',
	price = 0.8,
	rating = 4.9,
	last_updated = '2026-09-02 14:22:00-07',
	in_stock = TRUE
where product_name = 'Orange';

--Query 7
update products
set description = 'Collection of paper',
	price = 0.6,
	rating = 4.5,
	last_updated = '2026-09-02 14:22:00-07',
	in_stock = TRUE
where product_name = 'Notebook';

--Query 8
update products
set description = 'Graphite device to write',
	price = 0.4,
	rating = 4.7,
	last_updated = '2026-09-02 14:22:00-07',
	in_stock = TRUE
where product_name = 'Pencil';

--Query 9
update products
set description = 'Red fruit',
	price = 0.82,
	rating = 4.6,
	last_updated = '2026-09-02 14:22:00-07',
	in_stock = TRUE
where product_name = 'Apple';

--Query 10
update products
set price = 1.012
where product_name = 'Apple';

--Query 11
SELECT product_name, price
FROM products;
-- It rounds the number

--Query 12 --- Final Five Queries
SELECT *
FROM products;

--Query 13
SELECT product_name, price, rating
FROM products;

--Query 14
SELECT product_name, price
FROM products
where price > 0.6;

--Query 15
SELECT product_name, in_stock
FROM products
where in_stock = TRUE;

--Query 16
SELECT *
FROM products
order by price DESC;
