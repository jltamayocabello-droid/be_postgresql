CREATE OR REPLACE FUNCTION sumar_dos_numeros(numero1 INT, numero2 INT) RETURNS INT
AS $$
BEGIN
	RETURN numero1 + numero2;
END;
$$ LANGUAGE plpgsql;

SELECT sumar_dos_numeros(5, 7);

DROP FUNCTION sumar_dos_numeros(integer, integer);


CREATE OR REPLACE PROCEDURE mostrar_mensaje()
LANGUAGE plpgsql
AS $$
BEGIN
	RAISE NOTICE 'Hola este es un procedimiento';
END;
$$;

CALL mostrar_mensaje();


CREATE OR REPLACE FUNCTION verificar_numero(numero INT) RETURNS TEXT
AS $$
DECLARE
	resultado TEXT;
BEGIN
	IF numero > 0 THEN
		resultado := 'El numero es positivo';
	ELSIF numero < 0 THEN
		resultado := 'El numero es negativo';
	ELSE
		resultado := 'El numero es cero';
	END IF;

	RETURN resultado;
END
$$ LANGUAGE plpgsql;

SELECT verificar_numero(-4);
SELECT verificar_numero(10);






