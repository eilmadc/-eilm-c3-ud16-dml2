/* Eliminación de la db si existe */
DROP DATABASE IF EXISTS ejercicio1;

/* Creacion de la db */
CREATE DATABASE ejercicio1;

/* Selección de la base de datos para comenzar a utilizar */
USE ejercicio1;

/*  Creación tabla --> Entidad Fabricantes */
CREATE TABLE  fabricantes(
	Codigo INT AUTO_INCREMENT PRIMARY KEY,
	Nombre CHAR(100)
);

/* Creación tabla --> Entidad Artículos */
CREATE TABLE articulos (
Codigo INT AUTO_INCREMENT PRIMARY KEY,
Nombre char(100),
Precio INT,
Fabricante INT  NOT NULL,
FOREIGN KEY (Fabricante) REFERENCES fabricantes(Codigo) 
ON DELETE CASCADE
ON UPDATE CASCADE)
ENGINE=InnoDB;
;
/* Mostrar tablas */
INSERT INTO fabricantes VALUES 
('1', 'MSI'),
('2', 'Dell'),
('3', 'HP'), 
('4', 'GigaByte'),
('5', 'Nvidia'),
('6', 'ASUS'),
('7', 'Toshiba'), 
('8', 'Apple'),
('9', 'Lenovo'),
('10', 'Acer');


INSERT INTO articulos VALUES 
('1', 'Portatil 15', '500', '1'),
('2', 'Portatil 17', '800', '2'),
('3', 'Portatil 15 tactil', '1500', '3'), 
('4', 'Placa Base', '150', '4'),
('5', 'Tarjeta grafica 1', '105', '5'),
('6', 'Portatil', '500', '6'),
('7', 'Equipo sobremesa 1', '500', '7'), 
('8', 'Equipo sobremesa A001', '2000', '8'),
('9', 'Portatil 15 pulgadas i7', '500', '9'),
('10', 'PC Sobremesa', '800', '10');

/*1.1.*/select Nombre from articulos;
/*1.2.*/select Nombre,Precio from articulos;
/*1.3.*/select Nombre, Precio from articulos where Precio<=200;
/*1.4.*/select * from articulos where Precio between 60 and 120;
/*1.5.*/select Nombre,Precio * 166.386 as pesetas from articulos;
/*1.6.*/select avg(Precio) from articulos;
/*1.7.*/select avg(Precio) from articulos where Fabricante=2;
/*1.8.*/select Nombre,Precio from articulos where precio>=180;
/*1.9.*/select Nombre,Precio from articulos where precio>=180 order by Precio desc, nombre asc;
/*1.10.*/select * from articulos, fabricantes where articulos.Fabricante=fabricantes.Codigo;
/*1.11.*/select articulos.Nombre, articulos.Precio, fabricantes.Nombre from articulos, fabricantes where articulos.Fabricante=fabricantes.Codigo;
/*1.12.*/select avg(Precio),Fabricante from articulos group by Fabricante;
/*1.13.*/select avg(Precio),Fabricante from articulos group by articulos.Fabricante;
/*1.14.*/select avg(Precio),fabricantes.nombre from fabricantes, articulos where articulos.Fabricante=fabricantes.Codigo group by fabricantes.Nombre;
/*1.15.*/select Nombre,Precio from articulos where Precio=(select min(Precio) from articulos);
/*1.16.*/select articulos.Nombre, articulos.Precio, fabricantes.Nombre from articulos, fabricantes where articulos.fabricante=fabricantes.codigo
and articulos.Precio=(select max(articulos.Precio) from articulos where articulos.Fabricante=fabricantes.Codigo);
/*1.17.*/insert into articulos values(null,'Altavoces','70',2);select * from articulos;
/*1.18.*/update articulos set Nombre='Impresora Laser' where Codigo='8';select * from articulos;
/*1.19.*/update articulos set Precio=Precio*0.9;select * from articulos;
/*1.20.*/update articulos set Precio=Precio-10 where Precio>=120;select * from articulos;

