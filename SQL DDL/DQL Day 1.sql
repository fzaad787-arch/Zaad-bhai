-- DQL Select
use bankingdb;

show tables;
-- all record from table

select*from customers;

-- filter : -- where
-- customer id : 5 details
-- comparison operator

select*from customers where customerID=5;

-- display account details whose balance >5000
select*from accounts where balance>5000;

-- display accounts details whose balance <5000
select*from accounts where balance<5000;
-- not equal to
select*from accounts where AccountType <> "Savings";

-- specific columns
select firstname,lastname,phone from customers;

-- more than 1 condition
-- logical operator - and or not
-- balance>20000 and type = savings

select*from accounts where balance>20000 and AccountType="Savings";
select*from accounts where balance>20000 or AccountType="Savings";
select*from accounts where not AccountType="Savings";

-- between
select*from accounts where balance>=12000 and balance<=25000;
select*from accounts where balance between 12000 and 25000;

-- IN and Not in 
select*from customers where customerid=1 or customerid=5; 
select*from customers where customerid IN(1,5,10,15,21);

select*from accounts where accountType not in ("savings");

-- Is null
select*from customers where email is null;

-- is not null
select*from customers where email is not null;

-- Like operator that is used for pattern matching
-- starts with A & ends with "a"
SELECT * FROM customers where Firstname like "a%";
select * from customers where lastname like "%a";

-- contains "A"
select*from customers where lastname like "%a%";

-- four charachter name
select*from customers where lastname like "____";

-- name starts with A and lenght =4 
select*from customers where firstname like "a___";


-- order by clause
-- sorting
-- asc and desc

select*from accounts order by balance;
select*from accounts order by balance ASC;
select*from accounts order by balance desc;

select*from accounts where AccountType="Savings" order by balance desc;
select*from accounts where AccountType="Checking" order by balance desc;

-- Limit select * from tablename limit_rowcount
select * from accounts limit 5;

-- Top 3 saving account based on balance

select*from accounts where AccountType="savings" order by balance desc limit 3;

-- Bottom 3 saving account based on balance
select*from accounts where AccountType="savings" order by balance Asc limit 3;

-- retrive records from 6th to 10th
-- select list of columns from table_name
-- limit offset, rowcount
-- offset for first row is zero

select*from accounts limit 3,4;

-- highest balance
select*from accounts order by balance desc limit 0,1;

-- 2nd highest balance
select*from accounts order by balance desc limit 1,1;

-- lowest balance
select*from accounts order by balance ASC limit 0,1;

-- 2nd lowest balance
select*from accounts order by balance ASC limit 1,1;





