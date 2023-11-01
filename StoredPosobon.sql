USE CODER_OBJETOS_BBDD;

DELIMITER //
CREATE PROCEDURE OrdenarTabla(
    IN tabla_nombre VARCHAR(50),
    IN campo_ordenamiento VARCHAR(50),
    IN orden VARCHAR(10)
)
BEGIN
    SET @sql = CONCAT('SELECT * FROM ', tabla_nombre, ' ORDER BY ', campo_ordenamiento, ' ', orden);
    
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

CALL OrdenarTabla('VENTAS', 'PRECIO_FINAL', 'DESC');

--

DELIMITER //
CREATE PROCEDURE GestionarCliente(
    IN accion INT,
    IN nombre_cliente VARCHAR(50),
    IN dni_cliente INT,
    IN telefono_cliente BIGINT
)
BEGIN
    DECLARE consulta_sql VARCHAR(500);

    IF accion = 1 THEN
        SET @consulta_sql = CONCAT('INSERT INTO CLIENTES (NOMBRE, DNI, TELEFONO) VALUES (',
                                   QUOTE(nombre_cliente), ', ', dni_cliente, ', ', telefono_cliente, ')');
    ELSE
        SET @consulta_sql = CONCAT('DELETE FROM CLIENTES WHERE DNI = ', dni_cliente);
    END IF;

    PREPARE stmt FROM @consulta_sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;


CALL GestionarCliente(1, 'Nuevo Cliente', 12345678, 987654321);
SET SQL_SAFE_UPDATES = 0;
CALL GestionarCliente(2, NULL, 12345678, NULL);
SELECT * FROM CLIENTES;