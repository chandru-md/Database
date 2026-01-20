select database();

select * from books;

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
           
select * from books;

select author_lname from books;

select author_fname from books;

-- distinct
 
select distinct author_lname from books;

select * from books;

select released_year from books;

select distinct released_year from books;

select author_fname, author_lname from books;

select concat(author_fname,' ',author_lname) as full_name from books;

select distinct concat(author_fname,' ',author_lname) as full_name from books;

select distinct author_fname, author_lname from books;

-- order by

select * from books;

select book_id,title,author_lname from books;


insert into books(title,author_fname,author_lname)
values
('One day power','chandru','md');

select * from books;


select book_id,title,author_fname from books order by author_fname;  -- ascending by default


select book_id,title,author_fname from books order by author_fname desc; -- descending by changing manual.

select title,pages from books order by pages;

select title,pages from books order by released_year;

select title,pages,released_year from books order by released_year;

-- order by an number<2>

select book_id, author_fname,author_lname, pages from books order by pages;

select book_id, author_fname,author_lname, pages from books order by 2;

select book_id, author_fname,author_lname, pages from books order by 4;


select author_fname,author_lname from books order by author_lname,author_fname;

select author_lname, released_year , title from books order by author_lname,released_year desc;

select concat(author_fname,' ',author_lname) as author from books order by author;

-- limit

select book_id, title, released_year from books limit 5;

select book_id, title, released_year from books order by released_year desc limit 10;

select book_id, title, released_year from books order by released_year desc limit 5,7;

select title from books order by title limit 5;

-- like

select * from books order by title;

select title, author_fname, author_lname from books where author_fname like '%da%';  -- opt 0 or more characters

select * from books where title like '%:%'

select author_lname from books where author_lname like '____';


select * from books;

select * from books where author_fname like '%';

select * from books where author_fname like 'n%';

select * from books where author_fname like '%n';

select * from books where title like '%\%%';

select * from books where author_fname like '%\_%';
