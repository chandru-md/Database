-- data types

-- int varchar -- these two data types learned till now.

create table frd_names (
name varchar(10)
);

show databases;

use book_shop;

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

-- 'YYYY-MM-DD' -- FORMAT

-- HH:MM:SS -- TIME FORMAT -- -838 to +838

CREATE TABLE PEOPLE(
NAME VARCHAR(100),
BIRTH_DATE DATE,
BIRTH_TIME TIME,
BIRTHDT datetime
);

DESC PEOPLE;

INSERT INTO PEOPLE(NAME,BIRTH_DATE,BIRTH_TIME,BIRTHDT)
VALUES ('CHANDRU','2002-04-01','04:00:00','2002-04-01 04:00:00');

SELECT * FROM PEOPLE;

INSERT INTO PEOPLE(NAME,BIRTH_DATE,BIRTH_TIME,BIRTHDT)
VALUES ('KATHIRAVAN','1195-11-12','6:15:10','2002-04-01 04:00:00');

INSERT INTO PEOPLE(NAME,BIRTH_DATE,BIRTH_TIME,BIRTHDT)
VALUES ('VIJAY KUMAR','1995-06-18','23:55:14','1995-06-18 23:55:14');

SELECT * FROM PEOPLE;

SELECT CURTIME();

SELECT CURDATE();

SELECT NOW();

SELECT CURRENT_TIME();

SELECT current_date();
SELECT NOW();

INSERT INTO PEOPLE(NAME,BIRTH_DATE,BIRTH_TIME,BIRTHDT)
VALUES ('SANDHIYA',curdate(),current_time(),now());


SELECT * FROM PEOPLE;

-- DATE FUNCTIONS

SELECT * FROM PEOPLE;

SELECT BIRTH_DATE FROM PEOPLE;

SELECT BIRTH_DATE,DAY(BIRTH_DATE) FROM PEOPLE;

SELECT BIRTH_DATE,DAY(BIRTH_DATE),dayofweek(BIRTH_DATE) FROM PEOPLE;

SELECT BIRTH_DATE, DAY(BIRTH_DATE),dayofweek(BIRTH_DATE),dayofyear(BIRTH_DATE),dayname(BIRTH_DATE) FROM PEOPLE;

SELECT BIRTH_DATE, monthname(BIRTH_DATE) FROM PEOPLE;

SELECT BIRTH_TIME, monthname(BIRTH_TIME) FROM PEOPLE;

SELECT BIRTH_TIME, BIRTHDT, YEAR(BIRTH_TIME) FROM PEOPLE;

SELECT NAME,BIRTH_TIME, HOUR(BIRTH_TIME) FROM PEOPLE;

SELECT NAME,BIRTH_TIME, MINUTE(BIRTH_TIME) FROM PEOPLE;

SELECT NAME,BIRTH_TIME, SECOND(BIRTH_TIME) FROM PEOPLE;

SELECT BIRTHDT, HOUR(BIRTHDT) FROM PEOPLE;

SELECT BIRTHDT, DATE(BIRTHDT), TIME(BIRTHDT) FROM PEOPLE;

-- FORMATTING DATES


SELECT CONCAT(monthname(BIRTH_DATE),' ',DAY(BIRTH_DATE),' ',YEAR(BIRTH_DATE)) AS BIRTH_INFO FROM PEOPLE;

SELECT BIRTH_DATE, DATE_FORMAT(BIRTH_DATE,'%a %b %D') FROM PEOPLE;

SELECT BIRTHDT, TIME_FORMAT(BIRTHDT,'%H-%i') FROM PEOPLE;

SELECT BIRTHDT, TIME_FORMAT(BIRTHDT,'%r') FROM PEOPLE;

SELECT BIRTHDT, TIME_FORMAT(BIRTHDT,'BORN ON: %r') FROM PEOPLE;

-- DATE MATH

SELECT BIRTH_DATE FROM PEOPLE;

SELECT curdate();

SELECT datediff(CURDATE(),BIRTH_DATE) FROM PEOPLE;

SELECT datediff(CURDATE(),BIRTH_TIME) FROM PEOPLE;


SELECT DATE_ADD(curdate(), INTERVAL 1 YEAR);

SELECT DATE_ADD(curdate(), INTERVAL 1 MONTH);

SELECT date_sub(curdate(), INTERVAL 1 MONTH);


SELECT * FROM PEOPLE;

SELECT BIRTH_DATE FROM PEOPLE;

SELECT BIRTH_DATE, date_add(BIRTH_DATE, INTERVAL 18 YEAR) FROM PEOPLE;

SELECT BIRTH_DATE, DATE_ADD(BIRTH_DATE, INTERVAL 18 YEAR) FROM PEOPLE;

SELECT timediff(CURDATE(),'09:00:00');

SELECT timediff(CURTIME(),'09:00:00');

SELECT curtime();

SELECT 3-4;

SELECT NOW() - INTERVAL 18 YEAR;

SELECT NAME,BIRTH_DATE FROM PEOPLE;

SELECT NAME,BIRTH_DATE, YEAR(BIRTH_DATE + INTERVAL 21 YEAR) AS WILL_BE_21 FROM PEOPLE;

-- TIMESTAMPS

SELECT NOW();

SELECT timestamp('2026-01-24 01:47:09'
);