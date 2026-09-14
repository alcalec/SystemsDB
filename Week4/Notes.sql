create TABLE games(
  id interger GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  title varchar(100)
  release_year integer);

--GENERATED ALWAYS AS IDENTITY makes the data type into an autofill data type
-- Primary key makes it so each id is unique

INSERT INTO games (title, release_year)
  VALUES
  ('Elden Ring', 2022),
  ('Minecraft', 2011),
  ('Hades', 2020);

-- char(n) stores a fixed length char value

-- alter table games
-- add column game_code char(5)

-- Update games
-- SET game_code = 'ER001'
-- WHERE title = 'Elden Ring'

-- text stores variable length without requiring a max length
-- alter table games
-- add column description text;

update games
set description = 'Open world RPG'
WHERE title = 'Elden Ring'

-- numeric: stores exact decimal Values
-- 6 is the total number of digits
-- 2 is the digits after the decimal
alter table games
add column price numberic(6,2);

update games
set price=59.99
where title ='Elden Ring'

update games
set price=24.995
where title='Hades'
--Postgre SQL will round to fit the column

-- real: stores an approximate floating point number
alter table games
add column rating real;

update games
set rating = 4.7
where title='Elden Ring'

-- Floating-point types are approximate, so very precise values may not be
-- stored exactly as entered

update games
set rating= 4.1234567489
where title='Hades'

-- double precision: is a floating point type,
-- but it supports more precision than real

alter table games
add column hours_played double precision

update games
set hours_played=127.75698
where title ='Elden Ring'

-- Real and double precision are approximate data types,
-- While numeric is designed for exact decimal values

-- Timestamp stores both date and time
alter table games
add column last_played timestamp;

update games
set last_played='2026-09-01 14:23:00'
where title='Elden Ring'
-- YYYY-MM-DD HH:MM:SS

-- timestamp with timezone: this stores date & time with time zone info
alter table games
add column created_at timestamp with timezone;

update games
set last_played='2026-09-01 14:23:00-07'
where title='Elden Ring'

-- now() is a PostgreSQL function that returns the current date and time

--time: stores only a time of day without the date
-- format is 'HH:MM:SS' using 24 hour time

-- interval: Stores an amount of time rather than a specific date or time
alter table games
add column session_length interval;

update games
set session_length='2 Hours 30 minutes'
where title='Elden Ring'
-- Other valid examples:
-- 2 hours
-- 7 days
-- 2 months
-- 1 hour 15 minutes

-- Boolean stores a value of either true or false
alter table games
add column multiplayer boolean;

update games
set multiplayer = TRUE
WHERE title = 'Minecraft';

-- Boolean value must be TRUE or FALSE, no int value of 1 or 0
