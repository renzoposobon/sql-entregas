USE CODER_OBJETOS_BBDD ;

DROP FUNCTION IF EXISTS obtenerTotalDeudasCliente;
DELIMITER &&
CREATE FUNCTION obtenerTotalDeudasCliente(cliente_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_deudas INT;
    SELECT IF(SUM(saldo_final) >= 0, SUM(saldo_final), 0) INTO total_deudas
    FROM DEUDAS
    WHERE NRO_CLIENTE = cliente_id;
    
    RETURN total_deudas;
END &&
DELIMITER ;

--

DROP FUNCTION IF EXISTS obtenerVendedorVentaMasCara;
DELIMITER &&
CREATE FUNCTION obtenerVendedorVentaMasCara()
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE vendedor_nombre VARCHAR(20);
    
    SELECT v.NOMBRE INTO vendedor_nombre
    FROM VENTAS ve
    JOIN VENDEDORES v ON ve.VENDEDOR = v.NRO_VENDEDOR
    ORDER BY ve.PRECIO_FINAL DESC
    LIMIT 1;
    
    RETURN vendedor_nombre;
END &&
DELIMITER ;

SELECT obtenerTotalDeudasCliente(1);
SELECT obtenerVendedorVentaMasCara();