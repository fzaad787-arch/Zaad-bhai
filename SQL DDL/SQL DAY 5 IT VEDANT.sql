create database BankingDB;

Use BankingDB;

-- Customers
Create table Customers(
CustomerID INT primary key,
Firstname varchar(50) NOT NULL,
LastName varchar (50) NOT NULL,
Email varchar (100) Unique,
Phone varchar (15) unique,
AccountCreationDate DATE DEFAULT (CURRENT_DATE)
);

desc customers;

-- 1. Add DOB column to customers
alter TABLE Customers
add DOB Date;

-- modify data type of phone to bigint
alter TABLE customers
modify phone bigint;

-- Accounts Table
create TABLE Accounts(
AccountID INT,
AccountType VARCHAR(20),
Balance DECIMAL (10,2));

desc Accounts;

-- Add Primary KEY on AccountID
ALTER TABLE Accounts
Add constraint pk_accounts
Primary key (AccountID);

-- 4 Add check constraint on Balance
ALTER TABLE Accounts
Add constraint chk_balance
check (balance >= 0);

-- Add CustomerID Column
Alter table Accounts
Add CustomerID INT;

-- 6. Add CustomerID as a Foreign KEY

Alter table Accounts
Add constraint fk_accounts_customer
foreign key (CustomerID)
References Customers(CustomerID);


-- Transaction Table
CREATE TABLE Transactions(
TransactionID INT,
TransactionDate date,
Amount Decimal(10,2),
TransactionType varchar(20));
desc Transactions;


-- 7 Add Primary Key on TransactionID
ALTER TABLE Transactions
Add constraint pk_transactions
Primary key (TransactionID);

-- Add CHECK constraint on amount
Alter table Transactions
Add constraint chk_transaction_amount
check (amount>0);

desc accounts;
desc customers;
desc transactions;

-- 9 Add AccountID Column
Alter table transactions
Add accountID INT;

-- 10 Add AccountID as foreign key
Alter table Transactions
Add constraint fk_transactions_account
FOREIGN KEY (AccountID)
References Accounts(AccountID);

-- Table Branches

CREATE TABLE Branches (
BranchID INT,
BranchName varchar (100),
BranchAddress varchar(200),
BranchPhone varchar(15));
desc branches;

-- Branch ID as a primary key
Alter table Branches
add constraint pk_branches
primary key (BranchID);

-- 12 Add AccountID and BranchID

create table AccountBranches(
AccountID INT,
BranchID INT,
AssignmentDate DATE);


-- 13 Add composite primay key
ALTER TABLE AccountBranches
Add constraint pk_accountbranches
primary key (AccountID,BranchID);

desc accountbranches;

-- 14 Add AccountID Foreign key
ALTER TABLE AccountBranches
ADD CONSTRAINT fk_ab_account
FOREIGN KEY (AccountID)
REFERENCES Accounts(AccountID);

ALTER TABLE AccountBranches
ADD CONSTRAINT fk_ab_branch
FOREIGN KEY (BranchID)
references Branches(BranchID);

-- Table LOANs

CREATE TABLE Loans(
LoanID INT PRIMARY KEY,
CustomerID INT NOT NULL,
LoanAmount decimal(12,2) CHECK(Loanamount>0),
InterestRate decimal(4,2),
StartDate Date,
EndDate DATE,
Foreign key (CustomerID)
References Customers(CustomerID));

Desc Loans;


