--Query 1
create table Animal_Types(type_id integer, species varchar(50), habitat varchar(25), diet varchar(50));
create table Animals(animal_id integer, animal_name varchar(25), species_id integer, age integer);

--Query 2
insert into Animal_Types (type_id, species, habitat, diet)
values 
(1, 'Lion', 'Savanna', 'Carnivore'),
(2, 'Giraffe', 'Savanna', 'Herbivore'),
(3, 'Penguin', 'Antarctic', 'Carnivore');

--Query 3
insert into Animals (animal_id, animal_name, species_id, age)
values 
(1, 'Simba', 1, 19),
(2, 'Melman', 2, 12),
(3, 'Skipper', 3, 8);

-- It gives you a syntax error and will show you what line.

--Query 4
select * from Animal_Types;
select * from Animals;
