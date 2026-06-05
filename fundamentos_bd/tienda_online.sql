
CREATE TABLE usuarios(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	email VARCHAR(150) UNIQUE NOT NULL,
	edad SMALLINT, 
	creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

INSERT INTO usuarios
	(nombre, email, edad)
VALUES
	('Ana Lopez', 'ana@yopmail.com', 35 ),
	('Carlos Ruiz', 'carlos@gmail.com', 21),
	('Pedro Sanchez', 'pedro@correo.com', 31)

SELECT *
FROM usuarios;

SELECT nombre, email
FROM usuarios;

SELECT *
FROM usuarios
WHERE edad > 25;

SELECT nombre, edad
From usuarios
ORDER BY edad DESC;

SELECT *
FROM usuarios
LIMIT 2;

UPDATE usuarios
SET email = 'lis.nuevo@gmail.com',
	edad = 29,
	nombre = 'Lissete Torres'
WHERE id = 3;

UPDATE usuarios
SET edad = edad + 1;

DELETE FROM usuarios
WHERE id = 3

CREATE TABLE productos (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	precio NUMERIC(10,2) NOT NULL,
	categoria VARCHAR(50),
	stock INTEGER DEFAULT 0
)

INSERT INTO productos (nombre, precio, categoria, stock) VALUES
('notebook gamer', 800.000, 'electronica', 15),
('mouse optico', 20.000, 'electronica', 150),
('polera', 20.000, 'ropa', 125),
('xbox', 400.000, 'electronica', 153),
('pantalon', 40.000, 'ropa', 15),
('notebook normal', 400.000, 'electronica', 15);

SELECT *
FROM productos
WHERE categoria = 'electronica';

SELECT nombre, precio
FROM productos
WHERE precio > 300.000

SELECT  nombre, precio
FROM productos
ORDER BY precio ASC

SELECT  nombre, precio
FROM productos
ORDER BY precio ASC
LIMIT 3
OFFSET 3

SELECT 
	nombre AS product,
	precio AS costo,
	stock AS cantidad_en_stock
FROM productos


CREATE TABLE ventas (
	id SERIAL PRIMARY KEY,
	producto_id INTEGER NOT NULL,
	cantidad INTEGER NOT NULL,
	fecha DATE DEFAULT CURRENT_DATE,
	total NUMERIC(10,2) NOT NULL

INSERT INTO ventas (producto_id, cantidad, fecha, total) VALUES
(1, 2, '2026-01-20', 820.000),
(2, 2, '2026-02-20', 320.000),
(3, 2, '2026-03-03', 345.000),
(1, 7, '2026-01-20', 820.000),
(2, 6, '2026-02-20', 120.000),
(3, 3, '2026-03-03', 35.000)

SELECT * FROM ventas

SELECT nombre, precio, categoria
FROM productos
WHERE precio >= 200.000
	AND categoria = 'electronica'
	OR nombre LIKE '%gamer%'

SELECT nombre, precio, categoria
FROM productos
WHERE precio BETWEEN 300.000 AND 100.000

SELECT nombre, precio, categoria
FROM productos
WHERE Categoria IN ('electronica')

SELECT nombre
FROM productos
WHERE nombre ILIKE 'a%'