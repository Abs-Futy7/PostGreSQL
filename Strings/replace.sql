SELECT REPLACE(dept, 'IT', 'Information Technology') FROM employees; -- replace IT with Information Technology

SELECT REPLACE('Hello', 'He', 'She'); -- replace He with She

SELECT REVERSE('Hello World'); -- reverse the string, returns dlroW olleH

SELECT LENGTH('Hello World'); -- returns 11

SELECT * FROM employees WHERE LENGTH(fname) > 5; -- returns employees whose fname length is greater than 5


SELECT LENGTH("    Alright    "); -- returns 13
SELECT LENGTH(TRIM("    Alright    ")); -- returns 8, here trim will remove spaces
-- we can use trim for removing spaces in password