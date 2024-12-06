SELECT * FROM database WHERE fname LIKE 'A%'; -- shows names starting with A

SELECT * FROM database WHERE fname LIKE '%a'; -- shows names ending with a (case sensitive)

SELECT * FROM database WHERE fname LIKE '%a%'; -- shows names having a in between name

SELECT * FROM database WHERE dept LIKE '__'; -- shows dept having two letters in name

SELECT * FROM database WHERE dept LIKE '___'; -- shows dept having three letters in name

SELECT * FROM database WHERE dept LIKE '_a%'; -- shows dept which has a as 2nd letter and has rest in others(marketing)