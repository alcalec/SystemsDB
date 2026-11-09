--  Part 2 --
SELECT
    g.title,
    p.publisher_name,
	g.price
FROM games g
INNER JOIN publishers p
    ON g.publisher_id = p.id
order by g.title ASC;
-- Indie Adventure does not appear in the results because it has no publisher to connect it.

-- Part 3 --
SELECT
    g.title,
    p.publisher_name,
	g.price
FROM games g
LEFT JOIN publishers p
    ON g.publisher_id = p.id
order by g.price DESC;
-- This query returns 8 games compared to Part 2's query which returned 7 games

-- Part 4 --
SELECT
    g.title,
	SUM(s.quantity) AS total_copies,
    COUNT(s.id) AS total_sales
FROM games g
INNER JOIN sales s
    ON g.id = s.game_id
GROUP BY g.id, g.title
ORDER BY total_copies DESC;
-- Street Fighter 6 and Mario Kart 8 Deluxe are both at 8 copies each.

-- Part 5 --
SELECT
    p.publisher_name,
    COUNT(g.id) AS game_count,
	ROUND(AVG(g.price), 2) AS average_price
FROM publishers p
INNER JOIN games g
    ON p.id = g.publisher_id
GROUP BY p.id, p.publisher_name
ORDER BY average_price DESC;
-- EA and Nintendo have the highest average prices at $59.99
