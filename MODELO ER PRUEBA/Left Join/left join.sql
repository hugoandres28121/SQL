/*Vamos a analizar la diferencia entre JOIN Y LOS LEFT JOIN*/

/*Inner Join*/
SELECT a.author_id,a.name,b.title FROM authors AS a
JOIN books AS b 
ON a.author_id=b.author_id
WHERE a.author_id BETWEEN 1 AND 5

ORDER BY a.author_id
;

/*Left Join*/
/*Vamos a analizar la diferencia entre JOIN Y LOS LEFT JOIN*/
SELECT a.author_id,a.name,b.title,COUNT(b.author_id) as Cantidad_Libros_Autores
FROM authors AS a
LEFT JOIN books AS b 
ON a.author_id=b.author_id
WHERE a.author_id BETWEEN 1 AND 5
GROUP BY a.author_id
ORDER BY a.author_id
;

/*El left Join a diferencia del Inner Join nos ayuda a manejar la falta de informacion
El left Join nos trae informacion aunque sea null
*/
