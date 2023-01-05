SELECT * FROM producto;


/*
	CREAR UNA CONSULTA QUE DEVUELVE LOS SEGUNDOS PRODUCTOS MAS CAROS DE CADA LOCAL
*/


SELECT distinct PRODUCTO from 
(SELECT producto,monto,idlocal,dense_rank() OVER(partition by idLocal order by monto DESC) AS R FROM producto) as T where R=2;


/*
create table local(
id_local int primary key auto_increment,
Nombre varchar(20)
)
;


create table productos (
id int primary key auto_increment,
producto varchar(20) not null,
monto int ,
idlocal int,
foreign key(idlocal) references local(id_local) 
)
;

*/


/*
	INSERT INTO local (Nombre) VALUES('local_1');
	INSERT INTO local (Nombre) VALUES('local_2');
*/

SELECT * FROM LOCAL;