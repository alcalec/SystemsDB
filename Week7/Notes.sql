-- -- Create a table that stores information about video games
-- CREATE TABLE games (
--     -- Automatically generates a unique ID for each game
--     game_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

--     -- Stores the name of the game
--     title varchar(100) NOT NULL,

--     -- Stores the genre of the game
--     genre varchar(50),

--     -- Stores the price with 2 decimal places
--     price numeric(6,2)
-- );


-- -- Add three games to the games table
-- INSERT INTO games (title, genre, price)
-- VALUES
--     ('Elden Ring', 'RPG', 59.99),
--     ('Minecraft', 'Sandbox', 29.99),
--     ('Helldivers 2', 'Shooter', 39.99);
-- -- Create a second table that stores game reviews
-- CREATE TABLE reviews (
--     -- Automatically generates a unique ID for each review
--     review_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

--     -- Connects each review to a game in the games table
--     game_id integer REFERENCES games(game_id),
-- 	-- references (tablename) (column name) 
-- 	-- an FK (foreign Key) is just a pk (primary key) from another table

--     -- Stores the review score
--     score integer
-- );
-- -- Add reviews and connect them to games using game_id
-- INSERT INTO reviews (game_id, score)
-- VALUES
--     (1, 10), -- Elden Ring
--     (2, 9),  -- Minecraft
--     (1, 8);  -- Elden Ring



--  how are these 2 tables connected?
-- these are connected by games.games_id <-----> reviews.game_id
-- primary key unquily identifies row
-- a foreign key refrences a row in another table 


--  think of it as :
-- PK - identifies the record 
-- FK - connects to that record 

-- why do we use join?
-- a JOIN allows our program to combine related information for us


-- select * from reviews


-- -- INNER JOIN= gives me rows that have a match in both tables 
-- -- select the game title from games and the score from reviews
-- SELECT games.title, reviews.score  -- tablename.column name
-- -- start with the games table
-- from games 
-- -- connect the reviews table to the games tables 
-- INNER JOIN reviews 
-- -- match our rows where both tables have the same game_id
-- ON games.game_id = reviews.game_id;
-- -- this line ^^^ tells postgre how the tables are related ----- VERY IMPORYTANT

-- -- postgre essentially asks:
-- -- does this game_id match this game_id?



-- LEFT JOIN= keeps everything from the left table 
-- seleect game title and its review

-- select game.title, review.score -- tablename.columnsname

-- -- games is our left table
-- from games 

-- -- keeps every game, even if it dosent have a review
-- LEFT JOIN reviews

-- -- matching the tables using what is connecting them
-- ON games.game_id = reviews.game_id;


-- helldivers appears now because we used a LEFT JOIN, a left join keeps everything from the left side 
-- inner join = ONLY MATCHING ROWS
-- LEFT JOIN - EVERYTHING FROM THE LEFT + MATCHES FROM THE RIGHT 
-- NULL tells us theres was no matching review

-- table ALIASES
-- TYPING FULL TABLES names get annoying and time consuming 
-- we create aliases for the table names , shorter name 

-- -- g is now games 
-- -- r is now reviews
-- -- Select the title and the review score
-- select g.title,r.score
-- -- gives games the alias of g 
-- from games as g
-- -- gives reviews the alias r
-- INNER join reviews as r
-- -- connect the tables via PK/FK
-- on g.game_id=r.game_id
-- --  i want to see games that score higher then 9
-- where r.score>=9;
-- -- scores low to high
-- ORDER BY r.score ASC;

-- -- joins dont replace what weve learned, they allow us to use those skills across multiple tables


-- midterm ____________________________________________________
-- how to create table
-- create table students(student_id integer primary key, student_name varchar(100), major text)

-- -- how to insert data into table 
-- insert into students
-- (student_id,student_name,major)
-- VALUES
-- (41265,"Nicolas Cunningham","Cybersecurity"),
-- (41265,"Nicolas Cunningham","Cybersecurity"),

-- -- query that selects every column from every row 
-- select * from students
-- -- * pulls everything 
-- -- only wants to see certian columns
-- select student_name, major
-- from students;
-- -- only want to see students that are in the networking program
-- select student_name, major
-- from students
-- where major ="cycbersecurity"
-- -- what if i had 2 conditions that had to be true
-- select student_name, major
-- from students
-- where major ="cycbersecurity"
-- and student_id=401267
-- if i wanted to sort even more
-- use ORDER BY
-- ASC is low to high
-- DESC is high to low

-- FUNCTIONS
-- preform calculations over multiple rows

-- count how many students exist
-- select count (*)
-- from students;

-- -- average tuition cost
-- select avg(tuition_cost)
-- from students;

-- -- highest tuition
-- select max(tuition_cost)
-- from studenst

-- count()-> count 
-- sum() ->total
-- avg()
-- min()
-- max()

-- how to update/alter table once its been created 
-- change the major of the student with the id of 102 to cyber
-- update students
-- -- update changes existing data
-- --  set the new value
-- set major="networking"
-- -- only change this specific row 
-- where student_id=102;


-- -- alter table changes the table itself
-- -- modify the structure of the student table
-- alter table students
-- -- add a column
-- ad column tuition_cost numeric(10,2);

-- -- NULL means the value is missing or unknowned
-- -- NOT NULL = requires a value, add NOT NULL after the data type (columnname data type not null)
-- student_name varchar(100) NOT NULL

-- select  > what do i want 
-- from    > where is it coming from
-- where   >which row do i want 
-- ORDER BY > how should the resault be sorted 
-- group by how should rows be grouped
