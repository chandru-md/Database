show databases;

create database relationships;

use relationships;

show tables;

DROP TABLE CUSTOMERS;

DROP TABLE ORDERS;

create table Customers(
	id int primary key auto_increment,
    first_name varchar(100),
    last_name varchar(100),
    email varchar(100)
);

insert into Customers(first_name,last_name,email)
values ('Chandru','M D','chandru@gmail.com'),
		('Kathiravan','M D','kathiravan@gmail.com'),
        ('kadhirvel','S','kadhir@gmail.com'),
        ('razeeth','Md','razeeth@gmail.com'),
        ('Boominath','M','bomminath@gmail.com'),
        ('Bharath waj','M','bharathwaj@gmail.com'),
        ('kannan','R','kannan@gmail.com'),
        ('Gokul','K','gokul@gmail.com'),
        ('Devi bala','R N','devibala@gmail.com'),
        ('Nandhini','S','nandhini@gmail.com'),
        ('Sweety Omana','M','sweetyomana@gmail.com');
        
select * from Customers;

select * from Orders;

create table Orders(
	order_id int primary key auto_increment,
    order_date date,
    amount DECIMAL(8,2),
    customer_id INT,
    foreign key(customer_id) REFERENCES Customers(id)
);

INSERT INTO ORDERS(ORDER_DATE,AMOUNT,customer_id)
values ('2026-01-12','99.99','1'),
		('2026-01-24','599.99','2'),
		('2026-01-30','40.99','3'),
		('2026-01-04','59.99','4'),
		('2026-01-06','94.99','1'),
		('2026-01-09','990.99','1'),
		('2026-01-02','890.99','2'),
		('2026-01-19','19.99','2'),
		('2026-01-15','69.99','11'),
		('2026-01-14','49.99','11'),
		('2026-01-12','1999.99','11');
    
select * from Customers;

select * from Orders;

insert into orders(order_date, amount, customer_id)
values
-- ('2026-01-31','1000.00','999');
('2026-01-31','1000.00','11');


-- cross joins

select id from Customers where last_name = 'M';

select * from Customers where last_name = 'M';


-- One to One Relationships

-- One to Many Relationships

-- Many to Many Relationships

-- One : Many

select database();

use relationships;
show tables;


select * from customers;

select * from Orders;

SHOW TABLES;

DROP TABLE customers;


DROP TABLE orders;

create table customers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

create table orders(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);


INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);


select * from customers;


show tables;
select * from orders;

select * from customers;

select * from orders;

insert into orders_2(order_date,amount,customer_id)
values('2026-02-02','2500.00','999');

select id from customers_1 where last_name = 'George';

select * from orders_2 where customer_id = 1;

select * from orders_2 where customer_id = 2;

select * from orders_2 where customer_id = (select id from customers_1 where last_name = 'george');


-- JOINS

-- CROSS JOINT

select * from customers_1,orders_2;

show tables;

-- 3 MAIN TYPES JOINTS OF MYSQL

-- INNER JOIN

SELECT * FROM CUSTOMERS;

SELECT * FROM ORDERS;

SELECT * FROM CUSTOMERS
JOIN ORDERS ON CUSTOMER_ID = ORDERS.CUSTOMER_ID = CUSTOMERS.ID;

SELECT FIRST_NAME,LAST_NAME,ORDER_DATE,AMOUNT FROM CUSTOMERS
JOIN ORDERS ON CUSTOMER_ID = ORDERS.CUSTOMER_ID = CUSTOMERS.ID;

select * from orders
join customers on customers.id = orders.customer_id;

select * from orders
join customers on customers.id =orders.customer_id;