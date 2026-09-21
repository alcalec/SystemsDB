--Query 1
create database week5_homework;

--Query 2
create table Sports_Teams(
team_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY, 
team_name varchar(30), 
city varchar(50), 
established date,
wins integer);

--Query 3
insert into Sports_Teams (team_name, city, established, wins)
values
('Dodgers', 'Los Angeles', '1958-04-18', 96),
('Red Sox', 'Boston', '1901-04-26', 84),
('Yankees', 'New York', '1901-04-26', 89),
('Cubs', 'Chicago', '1907-04-11', 87),
('White Sox', 'Chicago', '1901-04-24', 80),
('Giants', 'San Francisco', '1958-04-15', 64);

--Query 4
alter table Sports_Teams
add column color text;

--Query 5
alter table Sports_Teams
add column playoffs boolean;

--Query 6
alter table Sports_Teams
add column last_update timestamp;

--Query 7
alter table Sports_Teams
add column win_per real;

--Query 8
update Sports_Teams
set playoffs = TRUE,
  color = 'blue',
  win_per = 0.615,
  last_update = '2026-09-21 12:00:00'
where team_name = 'Dodgers';

--Query 9
update Sports_Teams
set playoffs = FALSE,
  color = 'orange',
  win_per = 0.410,
  last_update = '2026-09-21 12:00:00'
where team_name = 'Giants';

--Query 10
update Sports_Teams
set playoffs = TRUE,
  color = 'red',
  win_per = 0.538,
  last_update = '2026-09-21 12:00:00'
where team_name = 'Red Sox';

--Query 11
alter table Sports_Teams
rename column color to colour;

--Query 12
select *
from Sports_Teams;

--Query 13
select team_name, wins, win_per, playoffs
from Sports_Teams;

--Query 14
select team_name, playoffs
from Sports_Teams
where playoffs = TRUE;

--Query 15
select team_name, wins, win_per, playoffs
from Sports_Teams
where playoffs = TRUE
order by wins DESC;

--Query 16
select team_name, city, colour, win_per
from Sports_Teams
order by win_per DESC;

-- Part 6
-- Do


-- Reflection
--   Which new data type did you find the most useful?
-- I found boolean to be useful because it's a simple way to distinguish data a certain way like the way I used it with playoffs.
--   Why did you choose the data types you used?
-- I chose these data types because they made the most sense for a table about baseball. Timestamp is a good way to show the last date the wins were updated as well. Real is a good way to show winning percentage.
--   What is the difference between ALTER TABLE and UPDATE?
-- Alter will add columns and actual structure to the table itself while update will add data itself to the table.
