-- Create a table named 'employees'
CREATE TABLE employees
(
    -- Define a column 'id' to store the unique identifier for each employee.
    -- It uses the 'serial' data type, which automatically generates a 
    -- sequential number for each new row (auto-increment feature).
    -- This column is also set as the PRIMARY KEY, meaning it uniquely 
    -- identifies each record in the table.
    id serial PRIMARY KEY,

    -- Define a column 'firstname' to store the first name of the employee.
    -- It is of type VARCHAR(100), meaning it can store up to 100 characters.
    firstname VARCHAR(100),

    -- Define a column 'lastname' to store the last name of the employee.
    -- It is of type VARCHAR(50), meaning it can store up to 50 characters.
    lastname VARCHAR(50)
);
