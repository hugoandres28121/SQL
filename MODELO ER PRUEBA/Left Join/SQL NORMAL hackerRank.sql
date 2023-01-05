											/*HUGO Marrugo*/

											SELECT id_personal,nombre
											 FROM personal
											 WHERE id_personal IN
											(SELECT id_personal 
											FROM documentos
											 GROUP BY id_personal 
											HAVING COUNT(Id_personal)=3);


											/*Jhon Bayron*/

											SELECT P.ID_PERSONAL, P.NOMBRE 
											FROM PERSONAL P 
											INNER JOIN 
											(SELECT ID_PERSONAL 
											FROM DOCUMENTOS 
											GROUP BY ID_PERSONAL 
											HAVING COUNT(ID_PERSONAL) = 3) D 
											ON P.ID_PERSONAL = D.ID_PERSONAL;
