CREATE TABLE Bank (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100),
    branch_city VARCHAR(100)
);

INSERT INTO Bank (branch_id, branch_name, branch_city) VALUES (1, 'Downtown Branch', 'surat');
INSERT INTO Bank (branch_id, branch_name, branch_city) VALUES (2, 'Uptown Branch', 'bhav');
INSERT INTO Bank (branch_id, branch_name, branch_city) VALUES (3, 'Central Branch', 'surat');
INSERT INTO Bank (branch_id, branch_name, branch_city) VALUES (4, 'Westside Branch', 'rajkot');
INSERT INTO Bank (branch_id, branch_name, branch_city) VALUES (5, 'Eastside Branch', 'dwarika');
INSERT INTO Bank (branch_id, branch_name, branch_city) VALUES (6, 'Northside Branch', 'bhav');
INSERT INTO Bank (branch_id, branch_name, branch_city) VALUES (7, 'Southside Branch', 'talaja');
INSERT INTO Bank (branch_id, branch_name, branch_city) VALUES (8, 'Beachside Branch', 'sihor');
INSERT INTO Bank (branch_id, branch_name, branch_city) VALUES (9, 'Riverfront Branch', 'rajkot');
INSERT INTO Bank (branch_id, branch_name, branch_city) VALUES (10, 'City Center Branch', 'surat');

select * from Bank;

CREATE TABLE AccountHolder (
    account_holder_id INT PRIMARY KEY,
    account_no VARCHAR(20) UNIQUE,
    account_holder_name VARCHAR(100),
    city VARCHAR(100),
    contact VARCHAR(15),
    date_of_account_created DATE,
    account_status VARCHAR(20), -- 'active' or 'terminated'
    account_type VARCHAR(50),
    balance DECIMAL(10, 2)
);

INSERT INTO AccountHolder (account_holder_id, account_no, account_holder_name, city, contact, date_of_account_created, account_status, account_type, balance) 
VALUES (1, 'A001', 'manan', 'surat', '123-456-7890', '2023-01-10', 'active', 'savings', 1000.00);

INSERT INTO AccountHolder (account_holder_id, account_no, account_holder_name, city, contact, date_of_account_created, account_status, account_type, balance) 
VALUES (2, 'A002', 'jenil', 'bhav', '987-654-3210', '2023-02-16', 'active', 'checking', 1500.50);

INSERT INTO AccountHolder (account_holder_id, account_no, account_holder_name, city, contact, date_of_account_created, account_status, account_type, balance) 
VALUES (3, 'A003', 'parth', 'rajkot', '456-789-1234', '2023-03-20', 'active', 'savings', 1200.75);

INSERT INTO AccountHolder (account_holder_id, account_no, account_holder_name, city, contact, date_of_account_created, account_status, account_type, balance) 
VALUES (4, 'A004', 'harmin', 'surat', '321-654-9870', '2023-04-15', 'terminated', 'checking', 800.20);

INSERT INTO AccountHolder (account_holder_id, account_no, account_holder_name, city, contact, date_of_account_created, account_status, account_type, balance) 
VALUES (5, 'A005', 'jay', 'bhav', '789-123-4567', '2023-05-18', 'active', 'savings', 2300.00);

INSERT INTO AccountHolder (account_holder_id, account_no, account_holder_name, city, contact, date_of_account_created, account_status, account_type, balance) 
VALUES (6, 'A006', 'om', 'rajkot', '654-987-3210', '2023-06-22', 'active', 'checking', 1750.40);

INSERT INTO AccountHolder (account_holder_id, account_no, account_holder_name, city, contact, date_of_account_created, account_status, account_type, balance) 
VALUES (7, 'A007', 'smit', 'dwarika', '963-852-7410', '2023-07-25', 'active', 'savings', 500.00);

INSERT INTO AccountHolder (account_holder_id, account_no, account_holder_name, city, contact, date_of_account_created, account_status, account_type, balance) 
VALUES (8, 'A008', 'miraj', 'talaja', '147-258-3690', '2023-08-19', 'active', 'checking', 2200.90);

INSERT INTO AccountHolder (account_holder_id, account_no, account_holder_name, city, contact, date_of_account_created, account_status, account_type, balance) 
VALUES (9, 'A009', 'dharmik', 'sihor', '369-258-1470', '2023-09-10', 'terminated', 'savings', 0.00);

INSERT INTO AccountHolder (account_holder_id, account_no, account_holder_name, city, contact, date_of_account_created, account_status, account_type, balance) 
VALUES (10, 'A010', 'kishan', 'sihor', '852-741-9630', '2023-10-05', 'active', 'checking', 1950.80);

select * from AccountHolder;


CREATE TABLE Loan (
    loan_no INT PRIMARY KEY,
    branch_id INT,
    account_holder_id INT,
    loan_amount DECIMAL(10, 2),
    loan_type VARCHAR(50),
    FOREIGN KEY (branch_id) REFERENCES Bank(branch_id),
    FOREIGN KEY (account_holder_id) REFERENCES AccountHolder(account_holder_id)
);

INSERT INTO Loan (loan_no, branch_id, account_holder_id, loan_amount, loan_type) 
VALUES (1, 1, 1, 5000.00, 'personal');

INSERT INTO Loan (loan_no, branch_id, account_holder_id, loan_amount, loan_type) 
VALUES (2, 2, 2, 3000.50, 'auto');

INSERT INTO Loan (loan_no, branch_id, account_holder_id, loan_amount, loan_type) 
VALUES (3, 3, 3, 15000.75, 'home');

INSERT INTO Loan (loan_no, branch_id, account_holder_id, loan_amount, loan_type) 
VALUES (4, 4, 4, 25000.20, 'education');

INSERT INTO Loan (loan_no, branch_id, account_holder_id, loan_amount, loan_type) 
VALUES (5, 5, 5, 12000.00, 'personal');

INSERT INTO Loan (loan_no, branch_id, account_holder_id, loan_amount, loan_type) 
VALUES (6, 6, 6, 8000.40, 'auto');

INSERT INTO Loan (loan_no, branch_id, account_holder_id, loan_amount, loan_type) 
VALUES (7, 7, 7, 7500.00, 'home');

INSERT INTO Loan (loan_no, branch_id, account_holder_id, loan_amount, loan_type) 
VALUES (8, 8, 8, 4000.90, 'personal');

INSERT INTO Loan (loan_no, branch_id, account_holder_id, loan_amount, loan_type) 
VALUES (9, 9, 9, 6000.00, 'education');

INSERT INTO Loan (loan_no, branch_id, account_holder_id, loan_amount, loan_type) 
VALUES (10, 10, 10, 18000.80, 'home');

select * from loan;

-- Assume Account A has account_no 'A001' and Account B has account_no 'A002'

-- Deduct 100 from Account A
UPDATE AccountHolder
SET balance = balance - 100
WHERE account_no = 'A001' AND balance >= 100;

-- Add 100 to Account B
UPDATE AccountHolder
SET balance = balance + 100
WHERE account_no = 'A002';

select * from accountHolder;

SELECT *
FROM AccountHolder ah1
WHERE EXISTS (
    SELECT 1
    FROM AccountHolder ah2
    WHERE ah1.city = ah2.city
    AND ah1.account_holder_id != ah2.account_holder_id
);

SELECT account_no, account_holder_name,date_of_account_created
FROM AccountHolder
WHERE DAY(date_of_account_created) > 15;

SELECT branch_city AS City, COUNT(branch_id) AS Count_Branch
FROM Bank
GROUP BY branch_city;

SELECT ah.account_holder_id, ah.account_holder_name, l.branch_id, l.loan_amount
FROM AccountHolder ah
JOIN Loan l ON ah.account_holder_id = l.account_holder_id;


