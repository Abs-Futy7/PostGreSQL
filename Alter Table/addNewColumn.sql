ALTER TABLE contacts
ADD COLUMN city VARCHAR(50); -- adds new column city


ALTER TABLE contacts
DROP COLUMN city; -- removes city column

ALTER TABLE person
RENAME COLUMN name TO first_name;  -- changes name to first_name


--rename table

ALTER TABLE person
RENAME TO employee;


-- how to add a default value to a column
ALTER TABLE person
ALTER COLUMN fname
SET DATA TYPE varchar(200);