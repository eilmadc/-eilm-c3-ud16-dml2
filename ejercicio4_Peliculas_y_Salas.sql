/* Selección de la base de datos para comenzar a utilizar */
USE actividades;

/*4.1 */select p.NOMBRE from peliculas p;
/*4.2 */select distinct p.CALIFICACIONEDAD from peliculas p;
/*4.3 */select p.NOMBRE from peliculas p where CALIFICACIONEDAD is null;
/*4.4 */select * from salas s where s.PELICULA is null;
/*4.5 */select * from salas s left join peliculas p on s.PELICULA=p.CODIGO;
/*4.6 */select * from salas s right join peliculas p on s.PELICULA=p.CODIGO;
/*4.7 */select p.NOMBRE from salas s right join  peliculas p on s.PELICULA=p.CODIGO where s.PELICULA is null;
/*4.8 */insert into peliculas values('10','Un, Dos, Teres', '7');select * from peliculas;
/*4.9 */update peliculas set CALIFICACIONEDAD=13 where CALIFICACIONEDAD is null;select * from peliculas;
/*4.10 */delete from salas s where s.PELICULA in (select p.CODIGO from peliculas p where p.CALIFICACIONEDAD='G');
