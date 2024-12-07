--1. how to get output like 1:Raj:Sharma:IT

SELECT CONCAT_WS(':', fname, lname, dept) FROM employees WHERE emp_id = 1;

--2. 1:Raj Sharma:IT:50000

SELECT CONCAT_WS(':', CONCAT_WS(' ', fname, lname), dept, salary) FROM employees WHERE emp_id = 1;

--3. 4:Suman:FINANCE

SELECT CONCAT_WS(':', fname, UPPER(dept)) FROM employees WHERE emp_id = 4;

--4. I1 Raju
--   H2 Priya

SELECT CONCAT_WS(' ', CONCAT(LEFT(dept, 1), emp_id), fname) FROM employees WHERE emp_id IN (1, 2);

