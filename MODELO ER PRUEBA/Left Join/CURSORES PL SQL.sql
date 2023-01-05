/*Con Cursores PL SQL HUGO MARRUGO*/
															/*DECLARE
															CURSOR c_personal IS
																SELECT id_personal,nombre
																 FROM personal
																 WHERE id_personal IN
																(SELECT id_personal 
																FROM documentos
																 GROUP BY id_personal 
																HAVING COUNT(Id_personal)=3);

															BEGIN
																FOR r_personal IN c_personal LOOP
																DBMS_OUTPUT.PUT_LINE(r_personal.id_personal||' '||r_personal.nombre);
																END LOOP;
																

															END;


/*Con Cursosres PL SQL JHON BAYRON*/
															DECLARE
															CURSOR c_personal IS
																SELECT P.ID_PERSONAL, P.NOMBRE 
																FROM PERSONAL P 
																INNER JOIN 
																(SELECT ID_PERSONAL 
																FROM DOCUMENTOS 
																GROUP BY ID_PERSONAL 
																HAVING COUNT(ID_PERSONAL) = 3) D 
																ON P.ID_PERSONAL = D.ID_PERSONAL;


															BEGIN
																FOR r_personal IN c_personal LOOP
																DBMS_OUTPUT.PUT_LINE(r_personal.id_personal||' '||r_personal.nombre);
																END LOOP;
																

END;

