

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
('notebook gamer', 800.000, 'electronica', 15)
('mouse', 20.000, 'electronica', 150)
('polera', 20.000, 'ropa', 125)
('xbox', 400.000, 'electronica', 153)
('not', 800.000, 'electronica', 15)
('notebook gamer', 800.000, 'electronica', 15)

SELECT COUNT(*) AS total_productos
FROM productos

SELECT COUNT(*) AS total_productos
FROM productos
WHERE categoria = 'ropa'

SELECT * FROM ventas

SELECT SUM(total) AS ingresos_totales
FROM ventas

SELECT AVG(precio) AS precio_promedio
FROM productos

SELECT 
	MIN(precio) AS precio_mas_bajo,
	MAX(precio) AS precio_mas_alto
FROM productos

SELECT
	producto_id,
	COUNT(*) AS cantidad_ventas,
	SUM(total) AS unidades_vendidas,
	SUM(total) AS ingreso_por_producto
FROM ventas
GROUP BY producto_id
ORDER BY ingreso_por_producto DESC

SELECT
	producto_id,
	SUM(total) AS ingresos
FROM ventas
GROUP BY producto_id
HAVING SUM(total) > 1000
ORDER BY ingresos DESC

SELECT DISTINCT categoria
FROM productos

SELECT nombre, precio
FROM productos
WHERE precio = (
	SELECT MAX(precio)
	FROM productos
)

SELECT nombre, precio,
	CASE
		WHEN precio >= 1000 THEN 'Premium'
		WHEN precio >= 100 THEN 'Alto'
		WHEN precio >= 50 Then 'Medio'
		ELSE 'Economico'
	END AS categoria_precio
FROM productos
ORDER BY precio DESC