desc ciudades;

/*
Necesitamos conocer los nombres de las ciudades de aquellos clientes cuyo domicilio es en calle 
"San Martin", empleando subconsulta.
3 registros.
*/
SELECT nombre 
FROM ciudades WHERE codigo IN
(SELECT codigociudad FROM clientes
WHERE domicilio LIKE '%San Martin%')
;
/*
4- Obtenga la misma salida anterior pero empleando join.
*/

SELECT distinct ciu.nombre 
FROM ciudades AS ciu JOIN clientes AS cli
ON  ciu.codigo=cli.codigociudad WHERE cli.domicilio LIKE '%San Martin%';

/*Obtenga los nombre de las ciudades de los clientes cuyo apellido no comienza con una letra 
específica, empleando subconsulta.
2 registros.*/

SELECT nombre FROM ciudades WHERE codigo IN
(SELECT codigociudad FROM clientes
WHERE  nombre LIKE 'G%');

/*Solucion*/
 select nombre
  from ciudades
  where codigo not in
   (select codigociudad
     from clientes
     where nombre like 'G%');
     
select codigociudad,nombre
  from clientes
  where nombre like 'G%'
	
/**/