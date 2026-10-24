-- Query 1
SELECT category
ROUND(AVG(price),2) as avg_price,
CEIL(AVG(price)) AS ceil_price
FROM products
GROUP BY category;

-- Query 2
SELECT
MAX(price) AS highest_price,
MIN(price) AS lowest_price
FROM products;

-- Query 3
SELECT
  "name",
  price,
  FLOOR(price) AS floored_price
FROM products;

-- Query 4
SELECT
  category,
  UPPER(category) AS uppercase_category
FROM products;

-- Query 5
CREATE VIEW category_overview AS
SELECT
  category,
  ROUND(AVG(price), 2) AS avg_price,
  SUM(stock) AS total_stock
FROM products
GROUP BY category
HAVING AVG(price) > 50;

-- Query 6
SELECT *
FROM category_overview;
