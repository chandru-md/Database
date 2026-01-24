-- use case of char
-- fixed_in_size

select curtime();

select curdate();

select dayofweek(curdate());

select dayname(curdate());

select dayname(curtime());

select date_format(now(),'%W');

select dayname(now());

select date_format(curdate(),'%m/%d/%Y');

select date_format(now(),'%M %D at %k:%i');

create table inventory(
item_name varchar(100),
price float,
quantity int
);

-- difference timestamp and datetime


create table tweets_table(
content varchar(200),
User_name varchar(20),
created_at timestamp default current_timestamp
);

insert into tweets_table(content,User_name)
values("this is my last tweet",'chandru_md'),
("this is my company build with AI",'Elon Musk');

select * from tweets_table;

