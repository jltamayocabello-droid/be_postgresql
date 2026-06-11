CREATE TABLE productos (
	id SERIAL PRIMARY KEY,
	nombre TEXT,
	precio NUMERIC
)

CREATE OR REPLACE FUNCTION validar_precio()
RETURNS TRIGGER
AS $$
BEGIN
	IF NEW.precio < 0 THEN
		RAISE EXCEPTION 'El precio no puede ser negativo';
	END IF;

	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_validar_precio
BEFORE INSERT
ON productos
FOR EACH ROW
EXECUTE FUNCTION validar_precio();

INSERT INTO productos(nombre, precio)
VALUES ('Laptp Gamer', 1200)

INSERT INTO productos(nombre, precio)
VALUES ('Iphone', -1200)

SELECT * FROM productos

CREATE ROLE alumno LOGIN PASSWORD '12345';
GRANT SELECT, INSERT ON productos TO alumno;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE productos_id_seq TO alumno;

REVOKE INSERT ON productos FROM admin;

