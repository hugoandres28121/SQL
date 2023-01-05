select * from authors Limit 5;
INSERT INTO transactions (book_id, client_id, type, finished) VALUES
	(12,34,'sell',1),
	(54,87,'lend',0),
	(3,14,'sell',1),
	(1,54,'sell',1),
	(12,81,'lend',1),
	(12,81,'sell',1),
	(87,29,'sell',1);
select * from books Limit 5;

select books.book_id,authors.name,authors.author_id,books.title FROM books INNER JOIN authors
ON books.author_id=authors.author_id WHERE authors.author_id between 1 and 5; 

select * from clients;
desc transactions;
SELECT * FROM transactions;

SELECT b.title AS Libro,a.name AS Autor,c.name AS Cliente,t.type AS Estado
FROM clients AS c
INNER JOIN transactions as t 
ON c.client_id=t.client_id 
INNER JOIN books as b 
ON t.book_id=b.book_id
JOIN authors as a
ON a.author_id=b.author_id
WHERE t.type='sell'
LIMIT 10
;

/*Vamos a analizar la diferencia entre JOIN Y LOS LEFT JOIN*/
SELECT a.author_id,a.name,b.title FROM authors AS a
LEFT JOIN books AS b 
ON a.author_id=b.author_id
WHERE a.author_id BETWEEN 1 AND 5

ORDER BY a.author_id
;