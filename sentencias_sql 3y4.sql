 
 /* 
 3. Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no
sea atendido desde hace mucho tiempo.
 */
SELECT ID_Historial , Fecha , DATEDIFF(curdate(), Fecha) dias FROM `historial` 
WHERE DATEDIFF(curdate(), Fecha)> 180;

delete from `historial` where id_historial 2,3);




/*
4. Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
*/
update `Perro` set Fecha_nac = '2015-06-16'  where ID_Perro = 5;

commit;


