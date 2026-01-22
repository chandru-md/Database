-- Aggregate function

show tables;

select count(*) from books;

show databases;

select count(author_fname) from books;

select count(distinct author_fname) from books;

select count(released_year) from books;