/*

		create schema PG20;
		USE PG20;

		create table PG20(
		id int primary key auto_increment,
		pais varchar(20),
		continente varchar (29),
		poblacion int,
		area int

		);


*/


/*
		create table GG20(
		Grupo varchar(20),
		continente varchar (29)
		);
*/


/*
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Alemania','Europa',82,348);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Arabia Saudita','Asia',33,2149);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Argentina','America',44,2736);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Australia','Oceania',24,7682);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Brazil','America',210,8358);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Canada','America',36,9093);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('China','Asia',1415,9388);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Estados Unidos','America',326,9147);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Francia','Europa',65,547);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('India','Asia',1354,2973);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Indonesia','Asia',266,1811);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Italia','Europa',59,294);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Japon','Asia',127,364);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Korea','Asia',51,97);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Mexico','America',130,1943);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Rusia','Asia',143,16);
		INSERT INTO PG20(pais,continente,poblacion,area) VALUES('Sudafrica','Africa',57,1213);

*/


/*

		INSERT INTO GG20(grupo,continente) VALUES('Grupo 1', 'Europa');
		INSERT INTO GG20(grupo,continente) VALUES('Grupo 2', 'America');
		INSERT INTO GG20(grupo,continente) VALUES('Grupo 3', 'Asia');
		INSERT INTO GG20(grupo,continente) VALUES('Grupo 4', 'Africa');
        
*/

SELECT * FROM PG20;
SELECT * FROM GG20;

/* 1.1 .Escribe una consulta que debuelve el detalle de Argentia(Columnas: pais, poblacion, area, continente)*/
/*
Mi Respuesta Actual
*/
SELECT pais,poblacion, area,continente FROM PG20 WHERE pais='Argentina';

/*Lo que puse en el examen*/
SELECT pais,poblacion,area,continente FROM PG20
WHERE pais='Argentina';

/* 1.2) Modificando la consulta anterior, agrega la columna “grupo*/

/*Respuesta Actual*/
SELECT p.pais,p.poblacion,p.area,p.continente,g.grupo
FROM PG20 AS p
JOIN GG20 AS g
ON p.continente=g.continente
WHERE pais ='Argentina'
;

/*Respuesta en el examen*/
SELECT p.pais,p.poblacion,p.area,p.continente,g.grupo 
FROM PG20 AS p
JOIN GG20 AS g
ON p.continente=g.continente
WHERE pais='Argentina';

/*1.3) Escribe una consulta que devuelva los países de latinoamérica (Argentina, Mexico y Brazil) y su detalle (columnas: población y área).*/

/*Mi respuesta*/
SELECT pais,poblacion,area FROM PG20 WHERE pais IN('Argentina','Mexico','Brazil');

/*Respuesta en el Examen*/
SELECT pais,continente,poblacion,area FROM PG20
WHERE pais IN ('Argentina','Mexico','Brazil');

/*1.4.Escribe una consulta que calcule la densidad poblacional (población / área) y nombre la columna “densidad”*/
SELECT pais, (poblacion/area) AS densidad FROM PG20;

/*Respuesta en el examen*/
SELECT pais, (poblacion/area) AS densidad FROM PG20;

/*1.5. Escribe la consulta que calcule la población para cada continente ordenada por población descendente*/

SELECT continente,SUM(poblacion) AS poblacion FROM PG20
GROUP BY continente 
ORDER BY poblacion DESC;

/*Respuesta en el examen Error en la respuesta, tendria que haber sumado la poblacion para sacar la poblacion total de cada continente*/
SELECT continente,poblacion FROM PG20
GROUP BY continente
ORDER BY poblacion DESC;


/*1.6. Escribe la consulta que calcule la población total de los
 países Latinoamerica (Argentina, Mexico y Brazil).*/
 
 SELECT SUM(poblacion) AS Poblacion_Total FROM PG20 WHERE pais IN('Argentina','Mexico','Brazil');
 
 /*Respuesta en el Examen */
 SELECT SUM(poblacion) AS Poblacion_Total FROM PG20 WHERE pais IN('Argentina','Mexico','Brazil');

/*1.7. Escribe la consulta que devuelva el listado de todos los continentes con la cantidad de paises donde esa cantidad sea mayor a 1*/
SELECT continente,COUNT(pais) AS cantidad_paises FROM PG20 
GROUP BY continente 
HAVING COUNT(pais)>1