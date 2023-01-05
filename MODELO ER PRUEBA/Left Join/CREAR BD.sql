SELECT authors.name FROM authors
;

SELECT a.name, COUNT(b.author_id)
FROM books AS b
JOIN authors AS a
GROUP BY a.name
;

SELECT * FROM authors;

SELECT a.nationality,COUNT(b.author_id)
FROM authors AS a
JOIN books AS b
ON a.author_id=b.author_id
GROUP BY nationality
;



SELECT a.nationality, COUNT(b.book_id) as qty_book
FROM books as b
JOIN authors as a
ON b.author_id = a.author_id
GROUP BY a.nationality;


SELECT c.name, t.type, b.title, a.name, a.nationality
FROM transactions as t
LEFT JOIN clients as c
ON c.client_id = t.client_id
LEFT JOIN books as b
ON b.book_id = t.book_id
LEFT JOIN authors as a
ON b.author_id = a.author_id;

create schema hugoPrueba;
use hugoPrueba;

create table libros(
  codigo int unsigned auto_increment,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  primary key (codigo)
 );

 create table socios(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
);

 create table prestamos(
  documento char(8) not null,
  codigolibro int unsigned,
  fechaprestamo date not null,
  fechadevolucion date,
  primary key (codigolibro,fechaprestamo)
 );