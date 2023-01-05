/*create table clientes(
  cliente_id int auto_increment,
  nombre char(8),
  apellido varchar(30),
  documento varchar(30),
  primary key (cliente_id)
 );
 
 create table tarjetas(
  tarjeta_id int not null primary key,
  cliente_id int,
  cuotas smallint,
  foreign key(cliente_id) references clientes(cliente_id)
 );*/
 
 SELECT * FROM TARJETAS;


/*
	QUE CONSULTA DEVUELVE LA INFORMACION DE LOS CLIENTES CUYAS CUOTAS DE SUS TARJETAS SEA DE 1 O 5 

*/
SELECT cli.cliente_id, cli.nombre, cli.apellido,cli.documento FROM clientes AS cli
WHERE cli.cliente_id IN(
SELECT tar.cliente_id,cuotas FROM tarjetas AS tar WHERE cuotas BETWEEN 1 AND 5 
)
;
 
/*
 
 INSERT INTO clientes(nombre,apellido,documento) VALUES('Laina','Marrugo',17);
 INSERT INTO tarjetas(tarjeta_id,cliente_id,cuotas) VALUES(13,1,1);  

*/ 

/*
	QUE CONSULTA DEVUELVE LOS CLIENTES QUE NO TIENEN TARJETAS ASIGNADAS
*/
SELECT cli.nombre,cli.apellido,cli.documento,tar.cliente_id AS ID_TARJETA FROM clientes AS cli
LEFT JOIN tarjetas AS tar ON cli.cliente_id=tar.cliente_id
WHERE tar.cliente_id is null
 ; 
 /*
	Que Consulta trae Menos Registros
*/
 SELECT nombre,apellido,documento FROM clientes 
 WHERE cliente_id is not null ;
 
 SELECT nombre,apellido,documento FROM clientes;
 
/*
	QUE CONSULTA DEVUELVE AQUELLOS CLIENTES QUE TIENEN O QUE TUVIERON DOS O MAS TARJETAS
    
    
    Solucion
    
    ***Para resolver este ejercicio debemos pensar que que podemos usar having que se usa en conjunto con el group by y posteriormente una funcion incorporada(SUM,MAX,AVG,ETC)
*/ 
 
 
 SELECT * FROM clientes;
 SELECT * FROM tarjetas;
 SELECT cli.cliente_id,cli.nombre,cli.apellido,cli.documento,COUNT(tarjeta_id) AS Cantidad_tarjetas
 FROM clientes AS cli
 JOIN tarjetas AS tar
 ON cli.cliente_id=tar.cliente_id
 GROUP BY 
 cli.nombre,
 cli.apellido,
 cli.documento 
 HAVING COUNT(tar.tarjeta_id)>1

 
  
 ;
 
 
 
 /*
		QUE CONSULTA DEVUELVE LOS NOMBRES QUE EMPIECEN CON LA LETRA H
 */
 SELECT nombre FROM clientes WHERE nombre LIKE  '%h';