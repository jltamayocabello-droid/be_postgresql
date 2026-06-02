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
FROM usuarios
ORDER BY edad DESC;

SELECT *
FROM usuarios
LIMIT 2;