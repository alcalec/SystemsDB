-- Parent Table artists
create table artists(
artist text Primary Key,
age integer,
hometown text);

-- Child Table albums
create table albums(
id serial Primary Key,
album_name text,
artist text,
genre text,
release_year int,
Foreign Key(artist) references artists(artist));

-- Insert into Artists table
insert into artists(artist, age, hometown)
Values
('Frank Ocean', 39, 'Long Beach'),
('Kanye West', 49, 'Chicago'),
('George Strait', 74, 'Poteet');

-- Insert into Albums table
insert into albums(album_name, artist, genre, release_year)
Values
('Blonde', 'Frank Ocean', 'R&B', 2016),
('Channel Orange', 'Frank Ocean', 'R&B', 2012),
('Late Registration', 'Kanye West', 'Rap', 2005),
('Straight From the Heart', 'George Strait', 'Country', 1982),
('The College Dropout', 'Kanye West', 'Rap', 2004);

-- View the join
select
artists.artist,
artists.age,
albums.album_name,
albums.release_year
FROM albums
JOIN artists
On albums.artist=artists.artist

-- Reflection --
-- This is a one-to-one relationship
-- It won't be able to find the department
-- Foreign Keys keep track of the primary ways to find other data from other tables
