create database college_db;
use college_db;
Create table department (
department_id INT auto_increment primary key,
department_name varchar(100) not null
);
create table course (
course_id int auto_increment primary key,
course_name varchar(100) not null,
department_id int
);
select * from course;
Create table instructor(
instructor_id int auto_increment primary key,
instructor_name varchar(100) not null,
department_id int 
);
create table students(
student_id int auto_increment primary key,
student_name varchar(100) not null,
course_id int 
);
show tables;
# i have created all the tables now i will add the values 
insert into department (department_name) values ("commerce"), ("science"), ("law"), ("maths");
select * from department;
insert into course (course_name, department_id) values ("accounts",1), ("biology", 2), ("criminal_law", 3), ("trignometry", 4);
select * from department;
select * from course;
insert into instructor (instructor_name, department_id) values ("Santosh sir", 1), ("Akhilesh sir", 2), ("shubham sir",3), ("Srikant sir", 4);
select * from instructor;
insert into students (student_name, course_id) values ("Rajoo Yadav", 1), ("Rohan Singh", 2), ("Sanu pandey", 3), ("Anshul Pandey",4);
select * from students;
# now i will connect all the tables with each other with the help of foreign key
ALTER TABLE Course
ADD CONSTRAINT fk_course_department
FOREIGN KEY (department_id) REFERENCES Department(department_id);
ALTER TABLE Instructor
ADD CONSTRAINT fk_instructor_department
FOREIGN KEY (department_id) REFERENCES Department(department_id);
show tables;
# everthing looks good dear instructor now i will connect the two more left tables with each other 
ALTER TABLE Students
ADD CONSTRAINT fk_student_course
FOREIGN KEY (course_id) REFERENCES Course(course_id);
use college_db;
# created my er Diagaram but it was very simple seems to be made by a kid 
# as an mba student i want my data to be very complex so i am going to add more tables and data in the table 
CREATE TABLE Student_Info (
    info_id INT AUTO_INCREMENT PRIMARY KEY,
    age INT NOT NULL,
    caste VARCHAR(100) NOT NULL,
    sex VARCHAR(10),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
CREATE TABLE Parents_Info (
    parent_id INT AUTO_INCREMENT PRIMARY KEY,
    parent_name VARCHAR(100) NOT NULL,
    occupation VARCHAR(100) NOT NULL,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
# now adding the data into my new tables
INSERT INTO Parents_Info (parent_name, occupation, student_id) VALUES 
('Mohan', 'Teacher', 1), 
('Ramesh', 'Doctor', 2), 
('Pankaj Pandey', 'Builder', 3), 
('Akhilesh Chand Pandey', 'Principal', 4);
# my secound table 
INSERT INTO Student_Info (age, caste, sex, student_id) VALUES 
(22, 'GEN', 'M', 1), 
(23, 'SC', 'M', 2), 
(21, 'GEN', 'M', 3), 
(25, 'OBC', 'M', 4);
# now i will go to the database then reverse Engineer
# this will make my er diagram




