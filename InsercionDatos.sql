USE CODER_OBJETOS_BBDD ;

INSERT INTO CLIENTES (nombre, dni, telefono) VALUES
	('Ramiro Lopez', 29847899, 261225409),
    ('Fernando Paolini', 33454985, 261220548),
    ('Julieta Miranda', 39402127, 262054533),
    ('Federico Arano', 22477985, 262416578),
    ('Alejandra Dietz', 36478956, 2615150002),
    ('Franco Maturano', 40553124, 2613654785),
    ('Ezequiel Lopez', 28549785, 2610323100),
    ('Lautaro Talquenca', 32145623, 2617858565),
    ('Renzo Posobon', 29847855, 2612054958),
    ('Facundo Plaza', 25525665, 2615416578);
    
INSERT INTO VENDEDORES (nombre, dni, nro_cliente) VALUES
	('Renzo', 29847855, 8),
    ('Francisco', 29847855, 2),
    ('Laureano', 29847855, 1),
    ('Julieta', 29847855, 3),
    ('Exequiel', 29847855, 5),
    ('Hernan', 29847855, 4),
    ('Carla', 29847855, 7),
    ('Francisco', 29847855, 9),
    ('Hernan Andres', 29847855, 6),
    ('Antonella', 29847855, 10);
    
INSERT INTO PROVEEDORES (cuil, razon_social, productos, descuentos) VALUES
	(30772319341, 'Wine of mendoza', 'Sottano, Azul, Altocedro', 50),
    (31702310343, 'Achaval Ferrer', 'Achaval Ferrer', 0),
    (30789316347, 'Vinza', 'Alandes, Altocedro, Tempusalba', 40),
    (32746319340, 'Catena Zapata', 'DV, Angelica Zapata, Nicolas Catena, Malbec Argentino', 45),
    (33722319343, 'Albaflor', 'Albaflor', 0),
    (30709319345, 'Bandini', 'Dos Cauces, Los Muros, Magno Corpore', 20),
    (30767319344, 'Republica', 'Monteviejo, Flecha de los Andes, Diamandes', 10),
    (31761319341, 'Lucas Niven', 'Pala Corazon, Extraviado', 60),
    (32772319349, 'Altus', 'Gran Vin, Gualtallary', 50),
    (31797319342, 'Senetiner', 'Senetiner', 0);
    
INSERT INTO PRODUCTOS (nombre, precio, proveedor) VALUES
	('Sottano Reserva Mbc', 7200, 30772319341),
    ('Sottano Clasico Mlt', 4500, 30772319341),
    ('Sottano Mil Demonios CS', 10400, 30772319341),
    ('Albaflor Cabernet Franc', 3700, 33722319343),
    ('Dos Cauces', 4800, 30709319345),
    ('Magno Corpore', 16000, 30709319345),
    ('DV Syrah', 7500, 32746319340),
    ('Malbec Argentino', 45000, 32746319340),
    ('Gran Vin', 11000, 32772319349),
    ('Gualtallary', 18600, 32772319349);

INSERT INTO DEUDAS (nro_cliente, productos, saldo_final) VALUES
    (1, 'DV Syrah, Dos Cauces', 19800),
    (2, 'Magno Corpore, Sottano Reserva Malbec', 22300),
    (3, 'Achaval Ferrer Blend', 17852),
    (4, 'Albaflor', 1500),
    (5, 'Dos Cauces', 4800),
    (6, 'Azul CS', 17620),
    (7, NULL, NULL),
    (8, NULL, NULL),
    (9, 'Magno Corpore', 14000),
    (10, NULL, NULL);

INSERT INTO VENTAS (vendedor, medio_de_pago, codigo_producto, nro_cliente, precio_final, fecha) VALUES
	(5, 'Pesos', 1, 1, 18700, '2023-10-17'),
    (5, 'Pesos', 2, 2, 2200, '2023-10-17'),
    (2, 'Tarjeta', 3, 2, 13500, '2023-10-15'),
    (1, 'QR', 4, 3, 9500, '2023-10-16'),
    (8, 'Tarjeta', 5, 5, 55400, '2023-10-15'),
    (4, 'QR', 6, 4, 97800, '2023-10-14'),
    (1, 'Tarjeta', 7, 9, 15000, '2023-10-13'),
    (9, 'Dolares', 8, 6, 3200, '2023-10-12'),
    (10, 'Reales', 9, 3, 1800, '2023-08-17'),
    (7, 'QR', 10, 1, 600, '2023-08-10');