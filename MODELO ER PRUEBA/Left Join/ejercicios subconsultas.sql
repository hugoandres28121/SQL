/*Obtenga todos los datos de los alumnos con la nota más alta, empleando subconsulta. registros.*/
/*use ejercicios_subconsultas;*/

desc alumnos;


/*SOLUCION*/
 select alumnos.*
  from alumnos
  where nota=
   (select max(nota) from alumnos);
   
 /**/

SELECT * FROM alumnos
WHERE nota=
( SELECT MAX(nota) FROM alumnos);


/*Muestre los alumnos que tienen una nota menor al promedio, su nota, y la diferencia con el 
promedio.
3 registros.*/



 select alumnos.*,
 (select avg(nota) from alumnos)-nota as diferencia
  from alumnos
  where nota<
   (select avg(nota) from alumnos);

SELECT  * FROM alumnos,
(SELECT AVG(nota) AS Promedio,(AVG(nota)-nota) AS Diferencia FROM alumnos ) as T
WHERE nota <
(SELECT AVG(nota) FROM alumnos) 

;
/**/
/**/
/**/