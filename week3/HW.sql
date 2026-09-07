--Query 1
create database week3_homework

--Query 2
create table Sports_Teams(
team_id integer GENERATED ALWAYS AS IDENTITY, 
team_name varchar(30), 
city varchar(50), 
established date,
wins integer);

--Query 3
insert into Sports_Teams (team_name, city, established, wins)
values
('Dodgers', 'Los Angeles', '1958-04-18', 85),
('Red Sox', 'Boston', '1901-04-26', 81),
('Yankees', 'New York', '1901-04-26', 79),
('Cubs', 'Chicago', '1907-04-11', 81),
('White Sox', 'Chicago', '1901-04-24', 75);

--Query 4
select * from Sports_Teams

--Query 5
select team_name, city from Sports_Teams

--Query 6
select distinct city from Sports_Teams
