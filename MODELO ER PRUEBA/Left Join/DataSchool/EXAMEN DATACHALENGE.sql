select nombre,titulo,fechaprestamo
  from prestamos as p
  join socios as s
  on s.documento=p.documento
  join libros as l
  on codigolibro=codigo
  WHERE nombre='Juan Perez'
  ;
  
  SELECT autor FROM LIBROS WHERE codigo=1;
SELECT * FROM LIBROS WHERE codigo=1;

SELECT * FROM SOCIOS;

select documento,nombre, domicilio from socios where nombre='Juan Perez';

/* Escribe una consulta que devuelva el detalle de Argentina (columnas: país, población, área, continente).*/
SELECT pais,población,área,continente FROM PG20
WHERE pais='Argentina';

/* 1.2) Modificando la consulta anterior, agrega la columna “grupo*/
SELECT p.pais,p.población,p.área,p.continente,g.grupo 
FROM PG20 AS p
JOIN GG20 AS g
ON p.continente=g.continente
WHERE pais='Argentina';

/*1.3) Escribe una consulta que devuelva los países de latinoamérica (Argentina, Mexico y Brazil) y su detalle (columnas: población y área).*/
SELECT pais,continente,población,área FROM PG20
WHERE pais IN ('Argentina','Mexico ','Brazil');

/* Escribe la consulta que calcule la población para cada continente ordenada por población descendente*/
SELECT población,continente FROM PG20
GROUP BY continente
ORDER BY población DESC;

/*Escribe una consulta que calcule la densidad poblacional (población / área) y nombre la columna “densidad”*/
SELECT (poblacion/area) AS densidad FROM PG20;

/* Escribe la consulta que calcule la población total de los
 países Latinoamerica (Argentina, Mexico y Brazil).*/
SELECT SUM(población) FROM PG20 WHERE pais IN('Argentina','Mexico','Brazil');

/* Escribe la consulta que devuelva el listado de todos los continentes con la cantidad de países donde esa cantidad sea mayor a 1*/

SELECT continente FROM PG20
GROUP BY continente
HAVING COUNT(pais)>1
;

/**/
/**/
;
select * from p;