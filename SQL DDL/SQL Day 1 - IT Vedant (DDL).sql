CREATE DATABASE student_DB;

-- to see the databases


-- to use database
USE student_db;

-- Create table
CREATE TABLE stud_info(stud_id int,name varchar (20),age int,address varchar(30));
-- structure of table
desc stud_info;
-- stud_id, subject ,marks
CREATE TABLE marks(stud_id int,subject varchar (20),marks int);
desc marks;


