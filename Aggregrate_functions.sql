-- Aggregate function

show databases;

select database();

use book_shop;

-- count

show tables;

select count(*) from books;

show databases;

select count(author_fname) from books;

select count(distinct author_fname) from books;

select count(released_year) from books;

select count(author_fname) from books;

select count(distinct author_fname) from books;

select count(distinct(released_year)) from books;

select released_year from books;

select count(*) from books where title like '%the%';

-- group by

-- "it summarizes or aggregates identical data into single rows"

select author_lname from books group by author_lname;

select author_lname from books;

select author_lname from books group by author_lname;

select author_lname, count(*) as books_written from books group by author_lname;

select released_year from books;

select released_year from books group by released_year;

select released_year,count(*) as books_published
 from books group by released_year;
 
 select * from books;
 
 select * from books group by author_lname;
 
 
 -- min and max
 
 -- values
 
 select count(*) from books;
 
 select min(released_year) from books;
 
 select max(pages) from books;
 
 select max(released_year) from books;
 
 select min(author_lname) from books;
 
 select max(author_lname) from books;
 
 select min(author_fname), max(author_lname) from books;
 
 select max(pages) from books;
 
 select max(pages) ,title from books;