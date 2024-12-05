-- Create a table named 'customers'
CREATE TABLE customers
(
    -- Define a column 'acc_no' to store the account number of each customer.
    -- It is of type INT (integer) and serves as the PRIMARY KEY, 
    -- which means it uniquely identifies each record in the table.
    acc_no INT PRIMARY KEY,

    -- Define a column 'name' to store the name of the customer.
    -- It is of type VARCHAR(100), meaning it can store up to 100 characters,
    -- and cannot be NULL (must have a value).
    name VARCHAR(100) NOT NULL,

    -- Define a column 'acc_type' to store the account type of the customer.
    -- It is of type VARCHAR(50), meaning it can store up to 50 characters.
    -- It has a default value of 'Savings', so if no value is provided 
    -- during insertion, 'Savings' will be automatically assigned.
    acc_type VARCHAR(50) NOT NULL DEFAULT 'Savings'
);
