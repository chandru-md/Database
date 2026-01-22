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
 
 select * from books where pages=634;
 
 select title,pages from books order by pages desc limit 1;
 
 select title,pages from books order by pages asc limit 1;
 
 select title,pages from books;
 
 select title,pages from books where pages = (select max(pages) from books);
 
select title,pages from books where pages = (select min(pages) from books)
 
INSERT INTO books (title, pages)
VALUES ("chandru's bio-graphy", 1090);

desc books;
 
 select * from books;


select title,pages from books where pages = (select max(pages) from books);

-- grouping by multiple columns

select author_fname,author_lname from books;

select author_fname,author_lname from books order by author_lname;

select author_lname,count(*) from books group by author_lname;

select author_fname,author_lname, count(*) from books group by author_lname,author_fname;

select concat(author_fname,' ',author_lname) as author ,count(*) from books group by author;

-- min/max -- group-by

desc books;

select author_lname,min(released_year) from books group by author_lname;

select concat(author_fname,' ',author_lname) as author,
count(*) as books_written,
min(released_year) as earliest_release,
max(released_year) as latest_release,
max(pages) as longest_Book
from books group by author;

-- sum

-- add things together

select sum(pages) from books;

select author_lname, pages from books;

select author_lname, count(*), sum(pages) from books
group by author_lname;

-- average

select avg(released_year) from books;

select avg(pages) from books;

select avg(stock_quantity) from books;

