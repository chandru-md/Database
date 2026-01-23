show databases;


use book_shop;

show tables;

-- EXERCISE


select * from books;

select count(pages) from books;

select released_year, count(*) from books group by released_year;

desc books;


select sum(stock_quantity) from books;

select stock_quantity from books;

select author_fname,author_lname from books group by author_fname,author_lname;

select author_fname,author_lname,avg(released_year) from books group by author_fname,author_lname;


select max(pages) from books;

select concat(author_fname,' ',author_lname) as author,pages from books where pages = (select max(pages) from books);

select author_fname,author_lname, pages from books order by pages desc limit 1;



select released_year,count(*) from books order by released_year;

select released_year as YEAR, count(*) AS BOOKS, avg(pages) as 'AVG PAGES' from books group by released_year order by released_year;
