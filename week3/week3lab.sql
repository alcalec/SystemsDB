--Query 1
create database week3_select;

--Query 2
CREATE TABLE games (
    id integer GENERATED ALWAYS AS IDENTITY,
    title varchar(100),
    genre varchar(50),
    platform varchar(50),
    release_year integer,
    rating numeric(3,1));

--Query 3
INSERT INTO games (title, genre, platform, release_year, rating)
VALUES
    ('Elden Ring', 'RPG', 'PC', 2022, 9.5),
    ('Rocket League', 'Sports', 'PC', 2015, 8.5),
    ('Super Smash Bros. Ultimate', 'Fighting', 'Switch', 2018, 9.0),
    ('Minecraft', 'Sandbox', 'PC', 2011, 9.2),
    ('Mario Kart 8 Deluxe', 'Racing', 'Switch', 2017, 8.8),
    ('Marvel Rivals', 'Shooter', 'PC', 2024, 8.0),
    ('Stardew Valley', 'Simulation', 'PC', 2016, 9.1),
    ('The Legend of Zelda: Tears of the Kingdom', 'Adventure', 'Switch', 2023, 9.4);

--Task 1
SELECT * FROM games;

--Task 2
select title, platform, rating from games;

--Task 3
select genre, title, release_year from games;

--Task 4
select title, rating from games
order by rating DESC;

--Task 5
select title, release_year from games
order by release_year ASC;

--Task 6
select platform, title, rating from games
order by platform ASC, rating DESC;

--Task 7
select distinct platform from games;

--Task 8
select distinct platform, genre from games;

--Task 9
select title, platform, release_year from games
where platform = 'Switch';

--Task 10
select title, genre, rating from games
where rating >= 9.0
order by rating DESC;

--Task 11
select title, release_year from games
where release_year < 2020
order by release_year ASC;

--Task 12
select title, rating from games
where rating between 8.5 AND 9.2;

--Task 13
select title, genre from games
where title LIKE 'M%';

--Task 14
select title from games
where title LIKE '%the%';

--Task 15
select title, genre from games
where genre LIKE '%i%';

--Task 16
select title, platform, rating from games
where platform = 'PC' and rating > 9.0;

--Task 17
select title, genre from games
where genre = 'RPG' OR genre = 'Fighting';

--Task 18
select title, platform, release_year from games
where platform = 'PC' AND(release_year < 2017 or release_year > 2022);

--Task 19
select title, genre, platform, rating from games
where rating >= 8.8
order by platform ASC, rating DESC;

--Task 20
-- I am selecting the title, release year, and rating
select title, release_year, rating 
-- I am grabbing these from the games table in my week3 database
from games
-- I am only getting games with a rating above or at 9.0 OR below 8.5
where rating >= 9.0 or rating < 8.5
-- I will order the rating as worst to best and the release year from newest to oldest
order by rating ASC, release_year DESC;
