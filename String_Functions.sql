-- String_functions

-- built-in str functions

show databases;

select database();

create database book_shop;

use book_shop;

create table books(
book_id int auto_increment primary key,
title varchar(100),
author_fname varchar(100),
author_lname varchar(100),
released_year int,
stock_quantity int,
pages int
);

insert into books(title,author_fname,author_lname,released_year,stock_quantity,pages)
values
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);


select * from books;

desc books;

select database();

show databases;
show tables;

-- concat operation/function

select concat('h','e','l','l','o');

select concat ('s','w','e','e','t','y');

select * from books;

select concat(author_fname,' ',author_lname) from books;

select concat(author_fname,' ',author_lname) as author_fullName from books;

select concat_ws('-','chandru','md');

select concat_ws('-',title,author_fname,author_lname) from books;

select concat_ws('-',title,author_fname,author_lname) from books;

-- substring  operation/function

select substring('Hello World',1,5);

select substring('Chandru',1,4);

select substring('Hello',2,5);

select substring('Hello World',7);

select substring('Hello World',-7);

select title from books;

select substring(title,1,15) from books;

select substr(author_lname,1,1) from books;

select substr(author_lname,1,1) as Initial , author_lname from books;




select concat(substring('chandru',1,5),'...');

select concat(substring(title ,1,10), '....') from books;

select concat(substr(title ,1,10), '...') from books;

select concat(substr(title ,1,10), '...') as short_title from books;


select concat(substring(author_fname,1,1),'.',substring(author_lname,1,1),'.') as Author_Initials from books;


-- replace

select replace('chandru','c','C');

select replace('kathiravan','k','K');

select replace('cheese bread coffee milk',' ',' and ');

select replace('chandru deivanayagan','deivanayagan','M D');

-- reverse

select reverse('Hello World');

select reverse('chicken nuggets');

select reverse(null);

select reverse('Chandru');

select reverse(author_fname) from books;

select concat(author_fname, reverse(author_fname)) from books;

-- char_length

select char_length('deivanayagan');

select length('deivanayagan');

select char_length(title), title from books;

select char_length(title) as title_length ,title from books;

-- upper and lower

select lower('Hello World');

select upper('hello world');

select ucase('chandru');

select lcase('KathiravaN');

select ucase(title) from books;

select concat(
'I love ', ucase(title),' !!!')
from books;

-- insert

select insert('hello sweety',6,0,' there');

-- left and right

select left('football',4);

select right('football',4);

select repeat('hello ',5);

select trim('    chandru     ');