/*3- Muestre el número de socio, el nombre del socio y el deporte en que está inscripto con un join de 
ambas tablas*/

SELECT s.numero,s.nombre,s.domicilio,i.deporte
FROM socios AS s 
JOIN inscriptos AS i
ON s.numero=i.numerosocio;

/*4- Muestre los socios que serán compañeros en tenis y también en natación (empleando 
subconsulta)
3 filas devueltas*/

SELECT numero,nombre FROM socios WHERE numero IN(
(SELECT numerosocio FROM inscriptos WHERE deporte IN('natacion','tenis')));


/*Solucion Pagina*/
select nombre
  from socios
  join inscriptos as i
  on numero=numerosocio
  where deporte='natacion' and 
  numero= any
  (select numerosocio
    from inscriptos as i
    where deporte='tenis');
