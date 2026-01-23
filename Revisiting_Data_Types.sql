-- data types

-- int varchar -- these two data types learned till now.

create table frd_names (
name varchar(10)
);


show tables;

insert into frd_names
values('Chandru'),
('Kadhirvel'),
('Razeeth'),
('Lokesh');

select * from frd_names;

SET SQL_SAFE_UPDATES = 0;

delete from frd_names;

select * from frd_names;
insert into frd_names
values('Chandru'),
('Kadhirvel'),
('Razeeth'),
('Lokesh');

select * from frd_names;

-- char has a fixed length

create table states(abbr char(2));

insert into states(abbr)
values ('TN'),('KL'),('KN'),('AP'),('MA');

select * from states;

insert into states(abbr)
values ('CMD');

desc states;

desc frd_names;

-- Numeric data types;

create table parent(children tinyint );

insert into parent(children)
values(3),(4),(0);


insert into parent(children)
values(-3),(5);

select * from parent;

-- over come this negative sign

drop table parent;

create table parent(child tinyint unsigned);

insert into parent(child)
values(3),(7),(1); 

insert into parent(child)
values(-1);

insert into parent(child)
values(2.75);

select * from parent;

create table products(price decimal(5,2));

insert into products(price)
values(555.678);

select * from products;

insert into products(price)
values(8465.2);

insert into products(price)
values(1.2546);

insert into products(price)
values(99.52),(105.26),(25.134);

select * from products;

-- float and double

create table numbers(x float, y double);

insert into numbers(x,y)
values(1.123,1.123);

select * from numbers;

insert into numbers(x,y)
values(1.123456789,1.123456789);

select * from numbers;

-- DATES and TIMES

-- ''

