SELECT * FROM employees;

SELECT CONCAT(fname, lname) AS fullname FROM employees; -- concat fname and lname
-- AS is alias, here fullname is alias

SELECT CONCAT_WS(' ', fname, lname) AS fullname FROM employees; -- concat fname and lname with space
-- we can give any thing instead of space