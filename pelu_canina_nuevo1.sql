create database pelu_canina;
use pelu_canina;

create table Dueno (
DNI int NOT NULL PRIMARY KEY,
Nombre varchar(30) NOT NULL,
Apellido varchar(30) NOT NULL,
Telefono int NOT NULL,
Direccion varchar(100)
);

insert into Dueno values (33123123,'julian','torres',11232323,'caseres 551');
insert into Dueno values (55321321,'victoria','sauces',11553355,'jujuy 951');
insert into Dueno values (99223333,'maria','trinidad',11545454,'9 de julio 1100');
insert into Dueno values (32333555,'pedro','casas',11555222,'dean funes 42');
insert into Dueno values (30111111,'pedro','raw',11313131,'sarmiento 55');

create table Perro (
ID_Perro int NOT NULL PRIMARY KEY,
Nombre varchar(30) NOT NULL,
Fecha_nac date,
Sexo varchar(20) NOT NULL,
DNI_dueno int NOT NULL,
FOREIGN KEY (DNI_Dueno) REFERENCES Dueno(DNI)
);

insert into Perro values (1,'picho','2020-04-12','macho',33123123);
insert into Perro values (2,'tofi','2019-04-15','macho',55321321);
insert into Perro values (3,'moro','2019-03-21','macho',99223333);
insert into Perro values (4,'lara','2017-03-21','hembra',32333555);
insert into Perro values (5,'lupi','2015-06-15','hembra',30111111);

SET SQL_SAFE_UPDATES = 0;


create table Historial(
ID_Historial int NOT NULL PRIMARY KEY,
Fecha date ,
Perro int NOT NULL,
Descripcion varchar(2000),
Monto int NOT NULL,
FOREIGN KEY(perro) REFERENCES Perro(ID_Perro)
);
insert into Historial values (001,'2022-05-13',1,'pulgas,pipeta forte',1200);
insert into Historial values (002,'2020-06-15',2,'solo control,estado optimo',900);
insert into Historial values (003,'2020-03-27',3,'peinado y corte',4500);
insert into Historial values (004,'2022-07-27',4,'peinado y corte',4500);
insert into Historial values (005,'2022-07-27',5,'Control',900);

