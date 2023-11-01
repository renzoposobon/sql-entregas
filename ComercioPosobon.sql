DROP SCHEMA IF EXISTS CODER_OBJETOS_BBDD ;
CREATE SCHEMA IF NOT EXISTS  CODER_OBJETOS_BBDD ; 
USE CODER_OBJETOS_BBDD ;

CREATE TABLE IF NOT EXISTS CLIENTES (
    NRO_CLIENTE INT AUTO_INCREMENT,
    NOMBRE VARCHAR(20),
    DNI INT,
    TELEFONO BIGINT,
    PRIMARY KEY (NRO_CLIENTE)
    -- FOREIGN KEY() REFERENCES DEUDAS(ID_DEUDA)
);

CREATE TABLE IF NOT EXISTS VENDEDORES (
    NRO_VENDEDOR INT AUTO_INCREMENT,
    NOMBRE VARCHAR(20),
    DNI INT,
    NRO_CLIENTE INT,
    PRIMARY KEY(NRO_VENDEDOR),
    FOREIGN KEY(NRO_CLIENTE) REFERENCES CLIENTES(NRO_CLIENTE)
);

CREATE TABLE IF NOT EXISTS PROVEEDORES 
(
CUIL BIGINT,
RAZON_SOCIAL VARCHAR(30),
PRODUCTOS VARCHAR(100),
DESCUENTOS INT,
PRIMARY KEY(CUIL)
)
;

CREATE TABLE IF NOT EXISTS PRODUCTOS (
    CODIGO INT AUTO_INCREMENT,
    NOMBRE VARCHAR(30),
    PRECIO INT,
    PROVEEDOR BIGINT,
    PRIMARY KEY (CODIGO),
    FOREIGN KEY(PROVEEDOR) REFERENCES PROVEEDORES(CUIL)
);


CREATE TABLE IF NOT EXISTS DEUDAS (
    ID_DEUDA INT AUTO_INCREMENT,
    NRO_CLIENTE INT,
    PRODUCTOS VARCHAR(100),
    SALDO_FINAL INT,
    PRIMARY KEY(ID_DEUDA),
    FOREIGN KEY(NRO_CLIENTE) REFERENCES CLIENTES(NRO_CLIENTE)
);

CREATE TABLE IF NOT EXISTS VENTAS (
    NRO_FACTURA INT AUTO_INCREMENT, 
    VENDEDOR INT,
    MEDIO_DE_PAGO VARCHAR(20),
    CODIGO_PRODUCTO INT,
    NRO_CLIENTE INT,
    PRECIO_FINAL INT,
    FECHA DATE,
    PRIMARY KEY (NRO_FACTURA),
    FOREIGN KEY(CODIGO_PRODUCTO) REFERENCES PRODUCTOS(CODIGO),
    FOREIGN KEY(NRO_CLIENTE) REFERENCES CLIENTES(NRO_CLIENTE),
    FOREIGN KEY(VENDEDOR) REFERENCES VENDEDORES(NRO_VENDEDOR)
);