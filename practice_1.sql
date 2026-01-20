create database studentdb;

use studentdb;

create table students(
student_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50),
birthdata date,
gender varchar(50));

create table courses(
course_id int auto_increment primary key,
course_name varchar(100),
credits int);

create table enrollment(
enrollment_id int auto_increment primary key,
student_id int,
course_id int,
enrollment_date date,
foreign key(student_id) references students(student_id),
foreign key(course_id) references courses(course_id));

insert into students(first_name,last_name,birthdata,gender)
values
("Chandru","M D","2002-04-01","Male"),
("Kathiravan","M D","1995-11-12","Male"),
("Karthik","S","2001-06-16","Male"),
("Naveen","V","2000-09-25","Male"),
("Kadhirvel","S","2001-03-19","Male");


insert into courses(course_name,credits)
values
("English",3),
("Mathematics",5),
("Physics",4),
("Chemistry",4),
("Zoology",3),
("Biology",4),
("History",4),
("Geography",3),
("Economics",4),
("Engineering",5),
("Data_science",4);

insert into enrollment(student_id,course_id,enrollment_date)
values
(1, 1, '2025-06-01'),
(1, 2, '2025-05-06'),
(2, 1, '2025-07-02'),
(2, 3, '2025-03-05'),
(3, 6, '2025-09-18'),
(3, 5, '2025-01-22'),
(4, 3, '2025-02-27'),
(4, 5, '2025-07-30'),
(5, 7, '2025-09-25'),
(5, 6, '2025-08-14');


select * from students;


select * from courses;

select * from enrollment;


select first_name,last_name from students;

select student_id,course_id from enrollment;