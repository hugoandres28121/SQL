/*create schema hackerRank;
use hackerRank;

create table personal(
id_personal int primary key auto_increment,
nombre varchar(20) not null
);

create table documentos(
id int primary key auto_increment,
id_personal int,
id_tipo_docu varchar(20),
docu varchar(100),
foreign key(id_personal) references personal(id_personal)
)

INSERT INTO personal(nombre)VALUES('Hugo Marrugo');
INSERT INTO personal(nombre)VALUES('Eliana Marrugo');
INSERT INTO personal(nombre)VALUES('Jaime Polo');
INSERT INTO personal(nombre)VALUES('Carlos Arnedi');
*/
SELECT * FROM personal;
/*
INSERT INTO documentos(id_personal,id_tipo_docu,docu)VALUES(1,'EXCELL','HOLA MUNDO');
INSERT INTO documentos(id_personal,id_tipo_docu,docu)VALUES(1,'EXCELL','HOLA MUNDO');
INSERT INTO documentos(id_personal,id_tipo_docu,docu)VALUES(1,'EXCELL','HOLA WORLD');
INSERT INTO documentos(id_personal,id_tipo_docu,docu)VALUES(1,'EXCELL','HELLO THERE');

INSERT INTO documentos(id_personal,id_tipo_docu,docu)VALUES(2,'EXCELL','GENERAL KENOBI');

INSERT INTO documentos(id_personal,id_tipo_docu,docu)VALUES(3,'EXCELL','HOLA MUNDO JAVA');
INSERT INTO documentos(id_personal,id_tipo_docu,docu)VALUES(3,'EXCELL','HOLA MUNDO TYPESCRIPT');
INSERT INTO documentos(id_personal,id_tipo_docu,docu)VALUES(3,'EXCELL','HOLA MUNDO JAVASCRIPT');

INSERT INTO documentos(id_personal,id_tipo_docu,docu)VALUES(4,'EXCELL','HOLANDAA');
INSERT INTO documentos(id_personal,id_tipo_docu,docu)VALUES(4,'EXCELL','HOLANDAA');
INSERT INTO documentos(id_personal,id_tipo_docu,docu)VALUES(4,'EXCELL','HOLANDAA');
*/

/*Hugo*/

SELECT id_personal,nombre
 FROM personal
 WHERE id_personal IN
(SELECT id_personal 
FROM documentos
 GROUP BY id_personal 
HAVING COUNT(Id_personal)=3);

/*Marce*/
SELECT P.ID_PERSONAL, P.NOMBRE FROM PERSONAL P INNER JOIN DOCUMENTOS D ON P.ID_PERSONAL=D.ID_PERSONAL
 GROUP BY D.DOCU
HAVING COUNT(*)=3 ORDER BY P.ID_PERSONAL DESC;


/*Muchacho*/

SELECT p.id_personal, p.nombre
 FROM personal p
 WHERE
(SELECT count(*) FROM documentos d WHERE d.id_personal = p.id_personal);

/*Jhon Bayron*/
SELECT P.ID_PERSONAL, P.NOMBRE 
FROM PERSONAL P 
INNER JOIN 
(SELECT ID_PERSONAL 
FROM DOCUMENTOS 
GROUP BY ID_PERSONAL 
HAVING COUNT(ID_PERSONAL) = 3) D 
ON P.ID_PERSONAL = D.ID_PERSONAL;

SELECT * FROM documentos;

INSERT INTO personal(id_personal,nombre)VALUES(1,'Hugo Marrugo');
INSERT INTO personal(id_personal,nombre)VALUES(2,'Eliana Marrugo');
INSERT INTO personal(id_personal,nombre)VALUES(3,'Jaime Polo');
INSERT INTO personal(id_personal,nombre)VALUES(4,'Carlos Arnedi');

alter table documentos 
  add constraint FK_personal_documentos 
  foreign key (id_personal) 
  references personal (id_personal);
  
  
  INSERT INTO documentos(id,id_personal,id_tipo_docu,docu)VALUES(1,1,'EXCELL','HOLA MUNDO');
  INSERT INTO documentos(id,id_personal,id_tipo_docu,docu)VALUES(2,1,'EXCELL','HOLA MUNDO');
  INSERT INTO documentos(id,id_personal,id_tipo_docu,docu)VALUES(3,1,'EXCELL','HOLA WORLD');
  INSERT INTO documentos(id,id_personal,id_tipo_docu,docu)VALUES(4,1,'EXCELL','HELLO THERE');
  
  INSERT INTO documentos(id,id_personal,id_tipo_docu,docu)VALUES(5,2,'EXCELL','GENERAL KENOBI');
  
  INSERT INTO documentos(id,id_personal,id_tipo_docu,docu)VALUES(6,3,'EXCELL','HOLA MUNDO JAVA');
  INSERT INTO documentos(id,id_personal,id_tipo_docu,docu)VALUES(7,3,'EXCELL','HOLA MUNDO TYPESCRIPT');
  INSERT INTO documentos(id,id_personal,id_tipo_docu,docu)VALUES(8,3,'EXCELL','HOLA MUNDO JAVASCRIPT');
  
  INSERT INTO documentos(id,id_personal,id_tipo_docu,docu)VALUES(9,4,'EXCELL','HOLANDAA');
  INSERT INTO documentos(id,id_personal,id_tipo_docu,docu)VALUES(10,4,'EXCELL','HOLANDAA');
  INSERT INTO documentos(id,id_personal,id_tipo_docu,docu)VALUES(11,4,'EXCELL','HOLANDAA');



  

  

  

  


  



  
  
  



