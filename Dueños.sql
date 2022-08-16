
DROP DATABASE IF EXISTS peluqueriacanina;
CREATE DATABASE peluqueriacanina CHARACTER SET utf8mb4;
USE peluqueriacanina;
 

CREATE TABLE dueno (
    dni INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    telefono VARCHAR(9)
);
 
CREATE TABLE perro (
    id_perro INT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    sexo ENUM('H', 'M') NOT NULL,
    dni_dueno INT,
    FOREIGN KEY (dni_dueno) REFERENCES dueno(dni)
    
);
 
 CREATE TABLE historial (
    id_historial INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    perro INT,
    FOREIGN KEY (perro) REFERENCES perro(id_perro),
    descripcion VARCHAR(100) NOT NULL,
    monto FLOAT UNSIGNED NOT NULL
);
 /* dueno*/

INSERT INTO dueno VALUES ('49111000', 'Susana', 'Perez', 'Córdoba', '716161611');
INSERT INTO dueno VALUES ('48999777', 'Emanuel', 'Gonzalez', 'San Luis', '586868688');
INSERT INTO dueno VALUES ('49222333', 'Ana', 'Garcia','Santa Cruz', NULL);
INSERT INTO dueno VALUES ('48444555', 'Miguel','Gomez', 'Buenos Aires', '224100081');
INSERT INTO dueno VALUES ('49999777', 'Yeni', 'Paz', 'Quilmes','116861611');
INSERT INTO dueno VALUES ('48444111', 'Alejo', 'Gimenez', 'Rosario', '123456001');
INSERT INTO dueno VALUES ('48000888', 'Mariano', 'Castro', 'Mar del Plata', '456789321');
INSERT INTO dueno VALUES ('48678543', 'Juan', 'Vasquez', 'Misiones', '679988331');
INSERT INTO dueno VALUES ('48123456', 'Pedro', 'Guzman', 'Cordoba', '214150081');
INSERT INTO dueno VALUES ('48987654', 'Thiago', 'Fernandez','CABA', '114122081');

 
/* perro */
INSERT INTO perro VALUES (100,'negrita', '2021/05/16', 'H','49111000');
INSERT INTO perro VALUES (101,'loba', '2020/01/08', 'H','48999777');
INSERT INTO perro VALUES (102,'tigre', '2019/11/19', 'M','49222333');
INSERT INTO perro VALUES (103,'pepo', '1999/12/04', 'M','48444555');
INSERT INTO perro VALUES (104,'negri', '2010/09/28', 'H','49999777');
INSERT INTO perro VALUES (105,'luna', '2017/10/23', 'H','48444111');
INSERT INTO perro VALUES (106,'panda', '2015/12/31', 'H','48000888');
INSERT INTO perro VALUES (107,'coco','2016/06/01', 'M','48678543');
INSERT INTO perro VALUES (108,'pepa', '2008/03/20', 'H','48123456');
INSERT INTO perro VALUES (109,'maggie', '2012/09/27', 'H','48987654');


/* historial */
INSERT INTO historial VALUES (1, '2022/06/13', 100, 'básica', 3000);
INSERT INTO historial VALUES (2, '2021/03/26', 101, 'básica', 2500);
INSERT INTO historial VALUES (3, '2022/04/29', 102, 'básica', 2450);
INSERT INTO historial VALUES (4, '2019/06/15', 103, 'básica', 1500);
INSERT INTO historial VALUES (5, '2022/02/11', 104, 'básica', 1000);
INSERT INTO historial VALUES (6, '2021/11/29', 105, 'alta', 9000);
INSERT INTO historial VALUES (7, '2021/12/06', 106, 'básica', 2000);
INSERT INTO historial VALUES (8, '2022/07/01', 107, 'básica', 2650);
INSERT INTO historial VALUES (9, '2020/08/09', 108, 'alta', 8000);
INSERT INTO historial VALUES (10, '2021/10/05', 109, 'básica', 3700);

/*11. Obtener todos los dueños que tengan perros de menos de 5 
años de edad que no hayan visitado la peluquería en el año 2022.*/

SELECT 
    p.nombre AS Perro,
    (YEAR(CURDATE()) - YEAR(p.fecha_nacimiento)) AS EdadPerro,
    CONCAT(d.apellido, ' ', d.nombre) AS Dueno,
    h.fecha as FechaVisita
FROM
    historial h
        INNER JOIN
    perro p ON p.id_perro = h.perro
        INNER JOIN
    dueno d ON d.dni = p.dni_dueno
WHERE
    h.fecha NOT BETWEEN '20220101' AND '20221231'
        AND (YEAR(CURDATE()) - YEAR(p.fecha_nacimiento)) < 5
        
