Create database sample;
Use sample;

CREATE TABLE Customer (
Customer_ID INT PRIMARY KEY,
Customer_Name VARCHAR (50) NOT NULL,
Email VARCHAR (100) UNIQUE,
Phone VARCHAR (15) UNIQUE,
Address VARCHAR (100),
City VARCHAR (50),
Account_Type VARCHAR (20) NOT NULL,
Balance DECIMAL (10,2) DEFAULT 0,
Status VARCHAR (20) DEFAULT 'ACTIVE'
);

desc customer;

INSERT INTO Customer (Customer_ID,Customer_Name,Email,Phone,Address,City,Account_Type,Balance,Status)
VALUES
(101,'Farrukhzaad Baig','zaad@gmail.com','8928161604','MG Road','Mumbai','Savings',40000.00,'Active');

select * from customer;

insert into customer values (1405,"Ejaz Baig","baig@gmail.com",8097496065,"Almas Colony","Thane","Savings",10000.54,"Active");
select * from customer;
insert into customer values (2204,"Zulekha Baig","zulu@gmail.com",9137882952,"Versova","Lokhandwala","Savings",54657.00,"Active");
select * from customer
insert into customer values (3110,"FN Baig", "nehad@gmail.com","8928112500","Airoli","NaviMumbai","Savings",100000.35,"Active"),
(410,"FZ Baig","fz@gmail.com","9134564595","Mumbra","NaviMumbai","Savings",110000.35,"Active"),
(106,"Zakariya","zak@gmail.com","8879152131","Airoli","NaviMumbai","Savings",80000.35,"Active");
INSERT INTO Customer (Customer_ID,Customer_Name,Address,City,Account_Type,Balance,Status)
VALUES (108,"Zakariya","Airoli","NaviMumbai","Savings",90000.35,"Active");



-- delete
-- all records

delete from customer where Customer_ID=101;
-- To change address 
-- Update 
Update Customer SET city="DNagar",Address="Versova" where customer_ID = 2204

-- truncate : deletes all record from the table1
-- drop : delete all records with strcuture from database
