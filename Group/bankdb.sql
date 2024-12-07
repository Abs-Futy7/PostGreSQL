-- need something in common for grouping for exm- gender, dept etc

SELECT dept FROM employees GROUP BY dept;

SELECT dept, COUNT(fname) FROM employees GROUP BY dept;