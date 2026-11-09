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
