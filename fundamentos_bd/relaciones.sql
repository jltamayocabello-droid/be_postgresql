CREATE TABLE clientes (
	id SERIAL PRIMARY KEY
)

CREATE TABLE pedidos (
	id SERIAL PRIMARY KEY,
	cliente_id INTEGER NOT NULL,
	FOREIGN KEY (cliente_id)
		REFERENCES clientes(id)
)