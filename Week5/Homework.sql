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

--Query 4
alter table Sports_Teams
add column playoffs boolean;

--Query 4
alter table Sports_Teams
add column last_update timestamp;
