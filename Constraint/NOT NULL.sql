-- Create a table named 'customers'
CREATE TABLE customers
(
    -- Define a column 'id' to store unique identifiers for each customer.
    -- It is of type INT (integer) and cannot be NULL (must have a value).
    id INT NOT NULL,

    -- Define a column 'name' to store the name of the customer.
    -- It is of type VARCHAR(100), meaning it can store up to 100 characters,
    -- and cannot be NULL (must have a value).
    name VARCHAR(100) NOT NULL
);
