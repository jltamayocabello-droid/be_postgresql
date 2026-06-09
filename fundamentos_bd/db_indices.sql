CREATE TABLE personas (
	id SERIAL,
	nombre TEXT,
	edad INTEGER
)

INSERT INTO personas (nombre, edad) VALUES
('Ana', 20),
('Pedro', 22),
('Luis', 34),
('Monse', 40),
('Carlo', 43),
('Millaray', 50),
('Alfonso', 20),
('Beatriz', 10),
('Marta', 33),
('Sofia', 54),
('David', 21)

EXPLAIN ANALYZE
SELECT * FROM personas
WHERE edad = 40

CREATE INDEX
idx_personas_edad
ON personas
(edad);

CREATE INDEX idx_personas_edad_hash
ON personas USING HASH (edad);