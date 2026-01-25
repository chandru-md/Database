-- str functions

select reverse(ucase('Why does my cat look at me with such hatred?'));

select replace(
concat('I', ' ', 'like', ' ', 'cats'),
' ' ,'_');

select * from books;

select title from books;

select replace(title, ' ','->') from books;

select author_lname as forwards, reverse(author_lname) as backwards from books;

select title, length(title)as character_count from books;

select ucase(concat(author_fname,' ',author_lname)) as full_name_in_caps from books; 


select concat(ucase(author_fname),' ',ucase(author_lname)) as full_name_in_caps from books; 

select * from books;

select concat(title, ' was released in ',released_year) as blurb from books;

select concat(substr(title,1,10),'...') as short_title,
concat(author_lname,',',author_fname) as author,
concat(stock_quantity,' in stock') as quantity
 from books;