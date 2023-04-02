/* Selección de la base de datos para comenzar a utilizar */
USE actividades;

/*3.1 */select * from almacenes;
/*3.2 */select * from cajas where VALOR>150;
/*3.3 */select distinct contenido from cajas;
/*3.4 */select avg(VALOR) from cajas;
/*3.5 */select ALMACEN, avg(VALOR) from cajas group by ALMACEN;
/*3.6 */select ALMACEN, avg(VALOR) from cajas group by ALMACEN having avg(VALOR) > 150;
/*3.7 */select c.NUMREFERENCIA, a.LUGAR from almacenes a,cajas c where a.CODIGO = c.ALMACEN;
/*3.8 */select a.CODIGO, count(c.NUMREFERENCIA) from almacenes a left join cajas c on a.CODIGO=c.ALMACEN group by a.CODIGO;
/*3.9 */select a.CODIGO from almacenes a where a.CAPACIDAD<( select count(*) from cajas c where c.ALMACEN=a.CODIGO);
/*3.10 */select c.NUMREFERENCIA from cajas c where c.ALMACEN in( select CODIGO from almacenes a where a.LUGAR='Bilbao');
/*3.11 */insert into almacenes values(6,'Barcelona', 3);select * from almacenes;
/*3.12 */insert into cajas values('H5RT', 'Papel', 200, 2);
/*3.13 */update cajas set VALOR=VALOR*0.85;
/*3.14 */update cajas set VALOR=VALOR*0.80 where cajas.VALOR> ( select avg(cajas.VALOR));
/*3.15 */delete from cajas where VALOR<100;
/*3.16 */delete from cajas c where c.ALMACEN in( select a.CODIGO from almacenes a where a.CAPACIDAD<( select count(*) where c.ALMACEN=a.CODIGO));

