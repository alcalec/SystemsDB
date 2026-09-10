--Query 1
create database week3_homework;

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

--==== 6 Different Queries ====--
--Query 4
select * from Sports_Teams;

--Query 5
select team_name, city from Sports_Teams;

--Query 6
select distinct city from Sports_Teams;

--Internal Note- Need to run these queries--

--Query 7
select * from Sports_Teams
where team_name = 'Dodgers';

--Query 8
select * from Sports_Teams
where city = 'Chicago'
and team_name = 'Cubs';

--Query 9
select * from Sports_Team
order by established ASC, wins ASC;

-- =============================================
-- Chapter 4 Quick Skim
-- =============================================

-- New Concept:
-- I learned that some data types have small, normal, and big options. It's interesting that they have a cap on how high they can be and also informs how many bytes that data will be.,

-- Question:
-- I am still wondering what JSON is and how and why we use it here. Do we call the information in that form or is that something we store in that format?
