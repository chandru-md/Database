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




    