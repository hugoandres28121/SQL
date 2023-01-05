/*¿Cuántos escritores hay de cada nacionalidad?*/

SELECT nationality , COUNT(nationality) AS Nacionalidades_Cantidad FROM authors
WHERE NOT nationality  ='null'
GROUP BY NATIONALITY ORDER BY Nacionalidades_Cantidad DESC,NATIONALITY ASC 
;

-- 4. ¿Cuál es el promedio/desviación standard del precio de libros?
SELECT a.nationality,  
  AVG(b.price) AS promedio, 
  STDDEV(b.price) AS std 
FROM books AS b
JOIN authors AS a
  ON a.author_id = b.author_id
GROUP BY a.nationality
ORDER BY promedio DESC;

-- 5. ¿Cuál es el promedio/desviación standard del precio de libros por nacionalidad?
-- Agrupar por la columna pivot
SELECT a.nationality,
  COUNT(b.book_id) AS libros,  
  AVG(b.price) AS promedio, 
  STDDEV(b.price) AS std 
FROM books AS b
JOIN authors AS a
  ON a.author_id = b.author_id
GROUP BY a.nationality
ORDER BY libros DESC;

-- 6. ¿Cuál es el precio máximo/mínimo de un libro?
SELECT nationality, MAX(price), MIN(price)
FROM books AS b
JOIN authors AS a
  ON a.author_id = b.author_id
GROUP BY nationality;

-- 7. ¿cómo quedaría el reporte de préstamos?
-- CONCAT: para concatenar en cadenas de texto.
-- TO_DAYS: recibe un timestamp ó un datetime
SELECT c.name, t.type, b.title, 
  CONCAT(a.name, " (", a.nationality, ")") AS autor,
  TO_DAYS(NOW()) - TO_DAYS(t.created_at)
FROM transactions AS t
LEFT JOIN clients AS c
  ON c.client_id = t.client_id
LEFT JOIN books AS b
  ON b.book_id = t.book_id
LEFT JOIN authors AS a
  ON b.author_id = a.author_id;
  
  
  select * from transactions;
  
  SELECT c.name  AS Nombre_Cliente,
  t.type AS Estado_Transaccion,
  b.title AS Titulo_Libro,
  a.name AS Autor,
  a.nationality AS Nacionalidad_Autor
  FROM transactions AS t
  LEFT JOIN clients AS C
  ON t.client_id=c.client_id
  LEFT JOIN books as b
  ON b.book_id=t.book_id
  LEFT JOIN authors as a
  ON b.author_id=a.author_id
  
