
use bdplatzi;

DESC PRODUCTO;

/*INSERT INTO producto(producto,monto,idLocal) VALUES('PRODUC_G',100,);*/
SELECT DISTINCT producto, monto,idLocal,dense_rank() OVER(partition by idlocal ORDER BY monto ASC)AS   R  FROM producto;

/*Bueno, esto fue algo dificil de entender, pero por lo menos resolvimos esa pregunta, animo, si no pasaste esta, seguro la otra la pasamos, no pienses en nadie mas
y esfuerzate por mejorar en tus conocimientos cada dia

bueno, en lo que respecta a este ejercicio, era traer los productos de cada local con el segundo precio mas alto, para poder resolverlo, estuve mirando las funciones de ventana, 
las cuales a diferencia de las funciones de agrupacion, agrupan si, pero aun conservan su detalle
hay muchas funciones de ventana o windows function, en este caso estoy usando el dense rank, que sirve para ordenar y crear una columna adicional donde se lleva un orden
secuencial de los ROWS

ES IMPORTANTE TENER EN CUENTA QUE SE DEBE CREAR UN ALIAS PARA LAS SUBCONSLTAS



*/

SELECT DISTINCT producto
FROM(SELECT producto,idlocal,dense_rank() OVER(partition by idlocal ORDER BY monto desc)AS R FROM producto ) AS T  WHERE R=2 ;


