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

