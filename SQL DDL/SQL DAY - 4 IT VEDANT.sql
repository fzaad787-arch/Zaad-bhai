Use sample;

CREATE TABLE Employee (
Employee_ID INT,
Employee_Name VARCHAR (20),
Email_ID VARCHAR (100),
Department VARCHAR (50),
Salary DECIMAL (10,2),
City VARCHAR (50));



desc employee;

-- if you want to add primary key 
ALTER TABLE Employee
ADD CONSTRAINT empid_pk primary key (Employee_ID);

-- if you want to add unique key

ALTER TABLE employee
ADD constraint email_uk UNIQUE (Email_ID);

desc employee;

-- if you dont want to add null
alter table employee
modify column Employee_Name varchar (50) not null;

desc employee;
-- if you want to add default
alter table employee
Alter city set default"mumbai";

alter table employee
ADD constraint sal_chk check (salary>0);

-- Parent table department (dept_id(pk),dept_name)
-- child table employee(employee_id(pk),dept_id(fk))
create TABLE Department(dept_id int primary key, dept_name varchar(20));

desc employee;
alter table employee
drop column department;

alter table employee 
ADD COLUMN dept_id int;

-- ADD foreign key
ALTER TABLE employee
ADD constraint deptid_fk
foreign key (dept_id)
references department (dept_id)
ON DELETE cascade
ON UPDATE cascade;
desc department;

INSERT INTO department
values (102,"HR"),(103,"MKT"),(104,"SALES"),(105,"Finance");

desc employee;

select * from department;

insert into employee values 
(1,"Zaad","zaad@gmail.com",100000,"Versova",102),
(2,"Zakk","zakk@gmail.com",500000,"Nallasopara",103),
(3,"Ejaz","baig@gmail.com",890000,"Mumbai",102),
(4,"Zulu","zulu@gmail.com",900000,"Thane",104),
(5,"FN","nehad@gmail.com",100000,"Airoli",105);

select * from employee;

-- delete DML
delete from department where dept_id=102;

Update department set dept_id=107 where dept_id=105;
