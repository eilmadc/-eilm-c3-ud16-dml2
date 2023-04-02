/* Selección de la base de datos para comenzar a utilizar */
USE actividades;

/*2.1*/select APELLIDOS from empleados;
/*2.2*/select distinct APELLIDOS from empleados;
/*2.3*/select * from empleados where APELLIDOS='Smith';
/*2.4*/select * from empleados where APELLIDOS in('Smith','Rogers');
/*2.5*/select * from empleados where DEPARTAMENTO=14;
/*2.6*/select * from empleados where DEPARTAMENTO in(37,77);
/*2.7*/select * from empleados where APELLIDOS like 'P%';
/*2.8*/select sum(PRESUPUESTO) from departamentos;
/*2.9*/select DEPARTAMENTO, count(*) from empleados group by DEPARTAMENTO;
/*2.10*/select * from empleados, departamentos where departamentos.CODIGO=empleados.DEPARTAMENTO; 
/*2.11*/select e.Nombre, e.APELLIDOS, d.Nombre, d.PRESUPUESTO from empleados e, departamentos d where d.CODIGO=e.DEPARTAMENTO;
/*2.12*/select e.Nombre, e.APELLIDOS from empleados e, departamentos d where e.DEPARTAMENTO=d.CODIGO and d.PRESUPUESTO>60000;
/*2.13*/select * from departamentos where PRESUPUESTO > (select avg(PRESUPUESTO) from departamentos);
/*2.14*/select d.Nombre from departamentos d where d.CODIGO in( select e.DEPARTAMENTO from empleados e group by DEPARTAMENTO having count(*)>2);
/*2.15*/insert into departamentos values ( 11 , 'Calidad' , 40000);insert into empleados values ('89267109' , 'Esther', 'Vázquez', 11);select * from empleados;
/*2.16*/update departamentos set PRESUPUESTO=0.9*PRESUPUESTO; select * from departamentos;
/*2.17*/update empleados set DEPARTAMENTO = 14 WHERE DEPARTAMENTO = 77;select * from empleados;
/*2.18*/delete from empleados where DEPARTAMENTO=14;
/*2.19*/delete from empleados where DEPARTAMENTO in( select CODIGO from departamentos where PRESUPUESTO>=60000);
/*2.20*/delete from empleados;

















