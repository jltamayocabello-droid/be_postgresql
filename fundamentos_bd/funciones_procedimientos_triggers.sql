CREATE OR REPLACE FUNCTION sumar_dos_numeros(numero1 INT, numero2 INT) RETURNS INT
AS $$
BEGIN
	RETURN numero1 + numero2;
END;
$$ LANGUAGE plpgsql;

SELECT sumar_dos_numeros(5, 7);

DROP FUNCTION sumar_dos_numeros(integer, integer);