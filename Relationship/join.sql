-- join operator is used to combine rows from two or more tables based on a related column between them

-- Types of join
-- 1. Cross 2. Inner 3. Left 4. Right

-- 1. Cross join: every row of one table is matched with every row of another table
SELECT * FROM customers CROSS JOIN orders;

-- 2. Inner join: only rows that have matching values in both tables are included in the result
SELECT * FROM customers c INNER JOIN orders o ON c.customer_id = o.customer_id;

-- 3. Left join: all rows from the left table are included in the result, and rows from the right table are included only if they have a matching value in the left table
SELECT * FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- 4. Right join: all rows from the right table are included in the result, and rows from the left table are included only if they have a matching value in the right table
SELECT * FROM customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id;