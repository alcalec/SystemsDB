-- Queries
SELECT UPPER(Brand) from products;

SELECT ROUND(4.523416, 3);

SELECT NOW();

-- View
CREATE VIEW expensive_product AS
SELECT UPPER('Name'), LOWER(Description), price
FROM products
WHERE price > 200;

-- Check
select * from expensive_product
