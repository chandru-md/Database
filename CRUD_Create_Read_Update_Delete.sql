-- Basics

-- create read update delete

show databases;

create database Animal;

use Animal;

create table cats(
cat_id int auto_increment primary key,
Name varchar(100),
age int ,
breed varchar(100)
);

desc cats;

insert into cats(name,age,breed)
values
('devi',4,'beauty'),
('sweety',3,'admire'),
('kavitha',5,'colorful'),
('vishali',2,'admire'),
('Kaushika',6,'bison'),
('elakkia',4,'beauty'),
('hema',5,'colorful');


select * from cats;

show tables;

select * from cats;

select name from cats;

select name,age from cats;

select name,breed from cats;

-- where

select * from cats;

select * from cats where age = 4;

select name,age from cats where age = 4;

select name,breed from cats where age = 6;

select * from cats;

select * from cats where breed = 'admire';

select cat_id from cats;

select name,breed from cats;

select name,age from cats where breed = 'colorful';


select * from cats where cat_id = age;


-- Aliases   ===== short form

select cat_id as id from cats;

select name as beauties from cats;

-- Update

select * from cats;

update cats set breed = 'adore'
where breed = 'colorful';

UPDATE cats 
SET breed = 'adore' 
WHERE breed = 'colorful' 
LIMIT 10;

select * from cats;

SET SQL_SAFE_UPDATES = 0;

select * from cats;

update cats
set breed = 'beautiful'
where breed = 'beauty';

select * from cats;

insert into cats(name,age,breed) values('Jackson\'s',10,'bison');

select * from cats;

select * from cats where breed = 'bison';

update cats
set name = 'jack'
where name = 'Jackson\'s';

select * from cats;

-- delete

delete from cats where name = 'jack';

select * from cats;

delete from cats where age = 5;

show tables;

select * from cats;

delete from cats;

select * from cats;
