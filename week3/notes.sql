--Select statement is used to retrieve data from a table
--  select * from teachers;

-- The * means to select all columns from the table

--If wanting to show only certain columnm
--  select first_name, school
--select these columns
--from this table
--  from teachers

--  select salary, first_name
--  from teachers
--  order by salary DESC;

--by default PostgreSQL sorts in ascending order
--DESC for descending order
--ASC means ascending for numbers it goes: 1,2,3,4,5
--For text it goes: A,B,C,D
--For Dates oldest to newest

--DESC puts in reverse order

/*
select last_name, first_name
from teachers
order by last_name ;
*/

--Ordering by multiple columns, one going ASC, one going DESC
--  select last_name, school, hire_date
--  from teachers
--Want to order by school ASC, hire_date by DESC
--  order by school ASC, hire_date DESC

--We can find unique values by using distinct after select
--Removes repeated values, makes data retrivial look neater

--  select distinct school
--  from teachers;

--where allows us to retrieve only rows that meet a certain condition
--  select first_name, last_name, school
--  from teachers
--  where school = 'Myers Middle School';

--Comparison Operators
-- = equal to
-- <> or != Not equal to
-- > greater than
-- < less than
-- >= greater than equal to
-- <= less than equal to
-- BETWEEN: with a range
-- IN: match one of several values

--Find all the teachers who were hired before 1/1/2010
--  select first_name, hire_date
--  from teachers
--  where hire_date < '2010-01-01' --Remember data data type is YYYY-MM-DD

-- I want to see the teachers who makes from 40k-60k
-- select first_name, last_name, salary
-- from teachers
-- where salary between 40000 AND 60000;
--Remember when using BETWEEN must also have AND

--Sometimes you don't know the exact text you are looking for
--We use LIKE in this scenario

-- select first_name
-- from teachers
-- where first_name LIKE 'Sam%';
-- % is a wildcard, any number of characters can appear
-- LIKE vs ILIKE
--LIKE is case sensitive
--ILKIKE is not case sensitive

-- _matches exactly one character
-- select first_name
-- from teachers
-- where first_name LIKE '_anet';

--Use AND when both confitions must be true
-- select *
-- from teachers
-- where school ='Myers Middle School'
-- AND salary < 40000;

-- A row must satisfy both conditions

-- Use OR when either condition can be true
-- select *
-- from teachers
-- where last_name='Cole'
-- OR last_name='Bush'

--Using parantheses
-- Parantheses become important when combing AND and OR

select *
from teachers
where school='F.D. Roosevelt HS'
AND(salary <38000 or salary > 40000)

-- SELECT
-- What data do we want?

-- FROM
-- Where does the data come from?

-- WHERE
-- Which rows do we want?

-- ORDER BY
-- How are the results sorted
