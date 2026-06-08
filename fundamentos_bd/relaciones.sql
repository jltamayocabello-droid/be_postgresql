CREATE TABLE clientes (
	id SERIAL PRIMARY KEY
)

CREATE TABLE pedidos (
	id SERIAL PRIMARY KEY,
	cliente_id INTEGER NOT NULL,
	FOREIGN KEY (cliente_id)
		REFERENCES clientes(id)
)

CREATE TABLE personas (
	id SERIAL PRIMARY KEY
)

CREATE TABLE pasaporte (
	id SERIAL PRIMARY KEY,
	persona:id INTEGER UNIQUE NOT NULL,
	FOREIGN KEY (persona_id) REFERENCES personas(id)
)

CREATE TABLE estudiantes (
	id SERIAL PRIMARY KEY
)

CREATE TABLE asignaturas (
	id SERIAL PRIMARY KEY
)

CREATE TABLE inscripciones (
	estudiante_id INTEGER NOT NULL,
	asignatura_id INTEGER NOT NULL,
	PRIMARY KEY (estudiante_id, asignatura_id),
	FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id),
	FOREIGN KEY (asignatura_id) REFERENCES asignaturas(id)
)