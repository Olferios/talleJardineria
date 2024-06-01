

INSERT INTO pais (nombre)
 VALUES
('Colombia'), ('Argentina'), ('Perú'), ('Chile'), ('México'), ('España'), ('Venezuela'), ('Ecuador'), ('Bolivia'), ('Uruguay'), ('Paraguay'), ('Costa Rica'), ('Panamá'), ('Honduras'), ('El Salvador');

-- tabla region:
INSERT INTO region (nombre, fkIdPais) 
VALUES
    ('Andina', 1), ('Caribe', 1), ('Pacífico', 1),
    ('Andalucía', 6), ('Cataluña', 6), ('Madrid', 6),
    ('Buenos Aires', 2), ('Córdoba', 2), ('Santa Fe', 2),
    ('Lima', 3), ('Arequipa', 3), ('Cusco', 3),
    ('Metropolitana', 4), ('Valparaíso', 4), ('Biobío', 4);

-- tabla ciudad:
INSERT INTO ciudad (nombre, fkIdRegion, codigoPostal)
 VALUES 
('Bogotá', 1, '110XX'), ('Medellín', 1, '050XX'), ('Cali', 1, '760XX'), ('Barranquilla', 1, '080XX'), ('Cartagena', 1, '130XX'), ('Madrid', 6, '280XX'), ('Barcelona', 6, '080XX'), ('Valencia', 6, '460XX'), ('Sevilla', 6, '410XX'), ('Bilbao', 6, '480XX'), ('Lima', 10, '150XX'), ('Arequipa', 10, '040XX'), ('Cusco', 10, '080XX'), ('Trujillo', 10, '130XX'), ('Piura', 10, '200XX'), ('Buenos Aires', 7, '1000'), ('Córdoba', 6, '5000');

-- tabla gamaProducto:

INSERT INTO gamaProducto (gama, descripcionTexto, decripcionHtml, imagen) 
VALUES
    ('herbaceas', 'Descripción de las plantas herbáceas...', 'Descripción HTML de las plantas herbáceas...', 'imagen_herbaceas.jpg');
INSERT INTO gamaProducto (gama, descripcionTexto, decripcionHtml, imagen) VALUES
    ('herramientas', 'Descripción de las herramientas de jardinería...', 'Descripción HTML de las herramientas de jardinería...', 'imagen_herramientas.jpg');
INSERT INTO gamaProducto (gama, descripcionTexto, decripcionHtml, imagen) VALUES
    ('aromáticas', 'Descripción de las plantas aromáticas...', 'Descripción HTML de las plantas aromáticas...', 'imagen_aromaticas.jpg');
INSERT INTO gamaProducto (gama, descripcionTexto, decripcionHtml, imagen) VALUES
    ('frutales', 'Descripción de los árboles frutales...', 'Descripción HTML de los árboles frutales...', 'imagen_frutales.jpg');
INSERT INTO gamaProducto (gama, descripcionTexto, decripcionHtml, imagen) VALUES
    ('ornamentales', 'Descripción de las plantas ornamentales...', 'Descripción HTML de las plantas ornamentales...', 'imagen_ornamentales.jpg');

-- tabla forma pago:
INSERT INTO formaPago (nombre) VALUES
    ('paypal'),
    ('debito'),
    ('credito'),
    ('efectivo'),
    ('bitcoin');

-- Tabla estado:
INSERT INTO estado (nombre) VALUES
('entregado'),
('rechazado'),
('pendiente');



-- Tabla tipoTelefono
INSERT INTO tipoTelefono (nombre) VALUES
('oficina'),
('oficina2'),
('casa'),
('personal');



-- Tabla tipoDireccion
INSERT INTO tipoDireccion (nombre) VALUES
('oficina'),
('oficina2'),
('casa'),
('personal');

-- Tabla proveedor
INSERT INTO proveedor (nombre, NumIdentificacion, fkIdCiudad) VALUES
    ('Proveedor1', '123456', 1),
    ('Proveedor2', '789012', 2),
    ('Proveedor3', '345678', 3),
    ('Proveedor4', '901234', 4),
    ('Proveedor5', '567890', 6),
    ('Proveedor6', '234567', 6),
    ('Proveedor7', '890123', 6),
    ('Proveedor8', '456789', 8),
    ('Proveedor9', '012345', 9),
    ('Proveedor10', '678901', 10);

-- Tabla Producto          
INSERT INTO producto (nombre, fkIdGama, dimensiones, fkIdProveedor, descripcion, cantidadStock, precioVenta, precioProveedor) VALUES
('Producto1', 1, '10x10x5', 1, 'Descripción del producto 1', 100, 50.00, 40.00),
('Producto2', 1, '15x15x8', 2, 'Descripción del producto 2', 150, 75.00, 60.00),
('Producto3', 1, '20x20x10', 3, 'Descripción del producto 3', 200, 100.00, 80.00),
('Producto4', 4, '25x25x12', 4, 'Descripción del producto 4', 250, 125.00, 100.00),
('Producto5', 5, '30x30x15', 5, 'Descripción del producto 5', 300, 150.00, 120.00),
('Producto6', 1, '12x12x6', 6, 'Descripción del producto 6', 120, 60.00, 48.00),
('Producto7', 2, '18x18x9', 7, 'Descripción del producto 7', 180, 90.00, 72.00),
('Producto8', 3, '22x22x11', 8, 'Descripción del producto 8', 220, 110.00, 88.00),
('Producto9', 4, '27x27x13', 9, 'Descripción del producto 9', 270, 135.00, 108.00),
('Producto10', 5, '32x32x16', 10, 'Descripción del producto 10', 320, 160.00, 128.00),
('Producto11', 1, '11x11x6', 2, 'Descripción del producto 11', 110, 55.00, 44.00), ('Producto12', 2, '16x16x9', 3, 'Descripción del producto 12', 160, 80.00, 64.00), ('Producto13', 3, '21x21x11', 4, 'Descripción del producto 13', 210, 105.00, 84.00), ('Producto14', 4, '26x26x13', 5, 'Descripción del producto 14', 260, 130.00, 104.00), ('Producto15', 5, '31x31x16', 6, 'Descripción del producto 15', 310, 155.00, 124.00), ('Producto16', 1, '13x13x7', 7, 'Descripción del producto 16', 130, 65.00, 52.00), ('Producto17', 2, '19x19x10', 8, 'Descripción del producto 17', 190, 95.00, 76.00), ('Producto18', 3, '23x23x12', 9, 'Descripción del producto 18', 230, 115.00, 92.00), ('Producto19', 4, '28x28x14', 10, 'Descripción del producto 19', 280, 140.00, 112.00), ('Producto20', 5, '33x33x17', 1, 'Descripción del producto 20', 330, 165.00, 132.00);

-- Tabla oficina:
INSERT INTO oficina (nombre, fkIdCiudad) VALUES 
('Oficina1', 1), 
('Oficina2', 2), 
('Oficina3', 3), 
('Oficina4', 4), 
('Oficina5', 6), 
('Oficina6', 1), 
('Oficina7', 2), (
'Oficina8', 3), 
('Oficina9', 6), 
('Oficina10', 5), 
('Oficina11', 6), 
('Oficina12', 2), 
('Oficina13', 3), 
('Oficina14', 4), 
('Oficina15', 5), 
('Oficina16', 1), 
('Oficina17', 2), 
('Oficina18', 6), 
('Oficina19', 4), 
('Oficina20', 5);

-- Tabla direccion oficina
INSERT INTO direccionOficina (direccion, fkTipoDireccion, fkIdOficina) VALUES
('Calle 123, Ciudad 1', 1, 1),
('Avenida Principal 456, Ciudad 2', 2, 2),
('Calle Central 789, Ciudad 3', 3, 3),
('Avenida Norte 321, Ciudad 4', 1, 4),
('Calle Sur 654, Ciudad 5', 2, 5),
('Avenida Este 987, Ciudad 1', 3, 6),
('Calle Oeste 111, Ciudad 2', 1, 7),
('Avenida Central 222, Ciudad 3', 2, 8),
('Calle Norte 333, Ciudad 4', 3, 9),
('Avenida Sur 444, Ciudad 5', 1, 10),
('Calle Este 555, Ciudad 1', 2, 11),
('Avenida Oeste 666, Ciudad 2', 3, 12),
('Calle Principal 777, Ciudad 3', 1, 13),
('Avenida Central 888, Ciudad 4', 2, 14),
('Calle Norte 999, Ciudad 5', 3, 15),
('Avenida Este 000, Ciudad 1', 1, 16),
('Calle Oeste 121, Ciudad 2', 2, 17),
('Avenida Sur 232, Ciudad 3', 3, 18),
('Calle Este 343, Ciudad 4', 1, 19),
('Avenida Principal 454, Ciudad 5', 2, 20);

-- Tabla Puesto:
INSERT INTO puesto (puesto) VALUES
('Representante de ventas'),
('CEO'),
('CTO'),
('Celador'),
('Analista'),
('Supervisor');



-- Tabla Empleado

INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
VALUES (1001, 'Juan', 'García', 'López', 'Ext. 101', 'juan.garcia@example.com', 1, NULL, 2);

INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
VALUES (1002, 'María', 'Martínez', 'Pérez', 'Ext. 102', 'maria.martinez@example.com', 2, 1, 1);

INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
VALUES (1003, 'José', 'Rodríguez', 'Gómez', 'Ext. 103', 'jose.rodriguez@example.com', 3, 2, 1);

INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
VALUES (1004, 'Ana', 'Fernández', 'Díaz', 'Ext. 104', 'ana.fernandez@example.com', 4, 2, 1);

INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
VALUES (1005, 'Carlos', 'López', 'Sánchez', 'Ext. 105', 'carlos.lopez@example.com', 5, 2, 3);

INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
VALUES (1006, 'Laura', 'Gutiérrez', 'Muñoz', 'Ext. 106', 'laura.gutierrez@example.com', 1, 1, 2);

INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
VALUES (1007, 'David', 'Pérez', 'Martínez', 'Ext. 107', 'david.perez@example.com', 2, 3, 2);

INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
VALUES (1008, 'Sofía', 'Sánchez', 'González', 'Ext. 108', 'sofia.sanchez@example.com', 3, 2, 3);

INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
VALUES (1009, 'Pablo', 'Martín', 'Romero', 'Ext. 109', 'pablo.martin@example.com', 4, 2, 3);

INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
VALUES (1010, 'Elena', 'Jiménez', 'Ruiz', 'Ext. 110', 'elena.jimenez@example.com', 5, 3, 4);

INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
VALUES (1011, 'Alejandro', 'Ruiz', 'Hernández', 'Ext. 111', 'alejandro.ruiz@example.com', 1, 3, 4);

INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
VALUES (1012, 'Carmen', 'Díaz', 'Torres', 'Ext. 112', 'carmen.diaz@example.com', 2, 4, 5);
INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
INSERT INTO empleado (codigoEmpleado, nombre, apellido1, apellido2, extension, email, fkIdOficina, fkCodigoJefe, fkPuesto) 
VALUES 
(1013, 'Maríona', 'Martínez', 'Pérez', 'Ext. 102', 'mariaw.martinez@example.com', 2, 7, 1),
(1014, 'Maríon', 'olaya', 'Pérez', 'Ext. 102', 'marisaw.martinez@example.com', 2, 7, 1);



-- Tabla cliente
-- Insertar datos
INSERT INTO cliente (nombreCliente, nombreContacto, apellidoContacto, fkIdCiudad, fkCodigoEmpleado, limiteCredito) VALUES

('Cliente1', 'Contacto1', 'Apellido1', 6, 2, 5000.00),
('Cliente2', 'Contacto2', 'Apellido2', 6, 3, 7000.00),
('Cliente3', 'Contacto3', 'Apellido3', 6, 4, 6000.00),
('Cliente4', 'Contacto4', 'Apellido4', 6, 2, 8000.00),
('Cliente5', 'Contacto5', 'Apellido5', 5, 3, 5500.00),
('Cliente6', 'Contacto6', 'Apellido6', 1, 4, 7200.00),
('Cliente7', 'Contacto7', 'Apellido7', 2, 2, 6300.00),
('Cliente8', 'Contacto8', 'Apellido8', 3, 3, 6800.00),
('Cliente9', 'Contacto9', 'Apellido9', 4, 4, 5000.00),
('Cliente10', 'Contacto10', 'Apellido10', 5, 2, 9000.00),
('Cliente11', 'Contacto11', 'Apellido11', 1, 3, 7500.00),
('Cliente12', 'Contacto12', 'Apellido12', 2, 4, 8200.00),
('Cliente13', 'Contacto12', 'Apellido12', 1, 3, 7500.00),
('Cliente14', 'Contacto13', 'Apellido13', 2, 4, 8200.00);

-- Tabla datos

INSERT INTO pago (fkIdCliente, fkFormaPago, idTransaccion, fechaPago, total) VALUES
(1, 1, 'Transaccion001', '2008-05-01', 500.00),
(2, 2, 'Transaccion002', '2008-05-02', 700.00),
(3, 1, 'Transaccion003', '2024-05-03', 600.00),
(4, 3, 'Transaccion004', '2023-05-04', 800.00),
(5, 2, 'Transaccion005', '2021-05-05', 550.00),
(6, 3, 'Transaccion006', '2024-05-06', 720.00),
(7, 1, 'Transaccion007', '2024-05-07', 630.00),
(8, 2, 'Transaccion008', '2024-05-08', 680.00),
(9, 3, 'Transaccion009', '2024-05-09', 500.00),
(10, 1, 'Transaccion010', '2024-05-10', 900.00),
(11, 2, 'Transaccion011', '2024-05-11', 750.00),
(12, 3, 'Transaccion012', '2024-05-12', 820.00);


-- Tabla poedido

INSERT INTO pedido (fechaPedido, fechaEsperada, fechaEntrega, fkEstado, comentarios, fkIdCliente) VALUES
('2009-06-01', '2009-06-01', '2009-06-03', 1, 'Comentario pedido 1', 10),
('2009-05-01', '2009-05-02', '2009-05-03', 2, 'Comentario pedido 1', 3),
('2009-04-01', '2009-04-01', '2009-04-01', 3, 'Comentario pedido 1', 4),
('2009-03-01', '2009-03-02', '2009-03-03', 3, 'Comentario pedido 1', 5),
('2009-02-01', '2009-02-02', '2009-02-02', 3, 'Comentario pedido 1', 5),
('2008-01-01', '2008-01-02', '2008-01-02', 1, 'Comentario pedido 1', 6),
('2008-08-01', '2008-08-03', '2008-08-03', 2, 'Comentario pedido 1', 9),
('2008-09-01', '2008-09-02', '2008-09-03', 2, 'Comentario pedido 1', 8),
('2008-10-01', '2008-10-03', '2008-10-03', 1, 'Comentario pedido 1', 8),
('2008-11-01', '2008-11-02', '2008-11-02', 3, 'Comentario pedido 1', 7),
('2008-12-01', '2008-12-03', '2008-12-04', 1, 'Comentario pedido 1', 7);

('2024-05-01', '2024-05-08', '2024-05-07', 1, 'Comentario pedido 1', 1),
('2024-05-02', '2024-05-09', '2024-05-08', 2, 'Comentario pedido 2', 2),
('2024-05-03', '2024-05-10', '2024-05-09', 1, 'Comentario pedido 3', 3),
('2024-05-04', '2024-05-11', '2024-05-11', 3, 'Comentario pedido 4', 4),
('2024-05-05', '2024-05-12', '2024-05-12', 2, 'Comentario pedido 5', 5),
('2024-05-06', '2024-05-13', '2024-05-14', 1, 'Comentario pedido 6', 1),
('2024-05-07', '2024-05-14', '2024-05-15', 2, 'Comentario pedido 7', 2),
('2024-05-08', '2024-05-15', '2024-05-15', 3, 'Comentario pedido 8', 3),
('2024-05-09', '2024-05-16', '2024-05-14', 1, 'Comentario pedido 9', 4),
('2024-05-10', '2024-05-17', '2024-05-16', 2, 'Comentario pedido 10', 5),
('2024-05-11', '2024-05-18', '2024-05-19', 3, 'Comentario pedido 11', 1),
('2024-05-12', '2024-05-19', '2024-05-20', 1, 'Comentario pedido 12', 2);
 

-- detalle pedido
INSERT INTO detallePedido (fkIdPedido, fkIdProducto, cantidad, precioUnidad, numeroLinea) VALUES
(1, 1, 5, 10.00, 1),
(1, 2, 3, 15.00, 2),
(2, 3, 2, 20.00, 1),
(2, 4, 4, 25.00, 2),
(3, 5, 3, 30.00, 1),
(3, 6, 1, 35.00, 2),
(4, 7, 4, 40.00, 1),
(4, 8, 2, 45.00, 2),
(5, 9, 5, 50.00, 1),
(5, 10, 3, 55.00, 2),
(6, 1, 2, 10.00, 1),
(6, 2, 4, 15.00, 2);


-- telefono cliente 
INSERT INTO telefonoCliente (fkTipoTelefono, fkIdCliente, telefono) VALUES
(1, 1, '123456789'),
(2, 2, '987654321'),
(1, 3, '555555555'),
(2, 4, '444444444'),
(1, 5, '333333333'),
(2, 6, '222222222'),
(1, 7, '111111111'),
(2, 8, '999999999'),
(1, 9, '888888888'),
(2, 10, '777777777'),
(1, 11, '666666666'),
(2, 12, '555555555');

-- direccion cliente
insert into direccionCliente ( direccion,	fkTipoDireccion,fkIdCliente) values
('direccion 1', '1', '1'),
('direccion 1', '2', '2'),
('direccion 1', '3', '3'),
('direccion 1', '1', '4'),
('direccion 1', '1', '5'),
('direccion 1', '1', '6'),
('direccion 1', '1', '7'),
('direccion 1', '1', '8'),
('direccion 1', '1', '9'),
('direccion 1', '2', '10'),
('direccion 1', '2', '11'),
('direccion 1', '2', '12');



-- telefono proveedor

INSERT INTO telefonoProveedor (fkTipoTelefono, fkIdProveedor, telefono) VALUES
(1, 1, '123456789'),
(2, 2, '987654321'),
(1, 3, '555555555'),
(2, 4, '444444444'),
(1, 5, '333333333'),
(2, 6, '222222222'),
(1, 7, '111111111'),
(2, 8, '999999999'),
(1, 9, '888888888'),
(2, 10, '777777777');
-- direccion proveedor
insert into direccionProveedor ( direccion,fkTipoDireccion,fkIdProveedor) values

('direccion 1', '1', '1'),
('direccion 1', '2', '2'),
('direccion 1', '3', '3'),
('direccion 1', '1', '4'),
('direccion 1', '1', '5'),
('direccion 1', '1', '6'),
('direccion 1', '1', '7'),
('direccion 1', '1', '8'),
('direccion 1', '1', '9'),
('direccion 1', '2', '10');



-- telefono oficina
INSERT INTO telefonoOficina (fkTipoTelefono, fkIdOficina, telefono) VALUES
(1, 1, '123456789'),
(2, 2, '987654321'),
(1, 3, '555555555'),
(2, 4, '444444444'),
(1, 5, '333333333'),
(2, 6, '222222222'),
(1, 7, '111111111'),
(2, 8, '999999999'),
(1, 9, '888888888'),
(2, 10, '777777777'),
(1, 11, '43456789'),
(2, 12, '387654321'),
(1, 13, '255555555'),
(2, 14, '144444444'),
(1, 15, '033333333'),
(2, 16, '922222222'),
(1, 17, '811111111'),
(2, 18, '799999999'),
(1, 19, '688888888'),
(2, 20, '577777777');
















