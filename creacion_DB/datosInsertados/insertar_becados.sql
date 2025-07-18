USE SistemaGestionBisblick;

INSERT INTO Becado (Nombre, Apellido, DNI, Fecha_Nacimiento, Genero, Direccion, Localidad_Actual, Provincia_Actual, ONG, Tiene_Cobertura_Medica, Nombre_Cobertura_Medica)
VALUES
('Juan', 'Pérez', '12345678', '1995-04-15', 'Masculino', 'Calle Falsa 123', 'Buenos Aires', 'Buenos Aires', 'ONG A', 'Si', 'OSDE'),
('María', 'Gómez', '23456789', '1992-08-22', 'Femenino', 'Av. Siempre Viva 742', 'Córdoba', 'Córdoba', 'ONG B', 'No', NULL),
('Carlos', 'López', '34567890', '1998-01-10', 'Masculino', 'Calle Luna 15', 'Rosario', 'Santa Fe', 'ONG C', 'Si', 'Swiss Medical'),
('Laura', 'Martínez', '45678901', '1997-12-05', 'Femenino', 'Av. Sol 1234', 'Mendoza', 'Mendoza', 'ONG A', 'Si', 'Galeno'),
('Jorge', 'Ramírez', '56789012', '1996-07-20', 'Masculino', 'Calle Estrella 56', 'Salta', 'Salta', 'ONG B', 'No', NULL),
('Ana', 'Fernández', '67890123', '1994-03-18', 'Femenino', 'Av. Nubes 87', 'La Plata', 'Buenos Aires', 'ONG C', 'Si', 'Medifé'),
('Ricardo', 'Sánchez', '78901234', '1999-05-12', 'Masculino', 'Calle Río 45', 'Neuquén', 'Neuquén', 'ONG A', 'No', NULL),
('Sofía', 'González', '89012345', '1993-11-02', 'Femenino', 'Av. Mar 30', 'Paraná', 'Entre Ríos', 'ONG B', 'Si', 'OSDE'),
('Diego', 'Torres', '90123456', '1995-06-30', 'Masculino', 'Calle Verde 77', 'Santa Rosa', 'La Pampa', 'ONG C', 'No', NULL),
('Lucía', 'Romero', '01234567', '1997-09-15', 'Femenino', 'Av. Azul 98', 'San Juan', 'San Juan', 'ONG A', 'Si', 'Swiss Medical'),
('Martín', 'Rojas', '11223344', '1994-02-28', 'Masculino', 'Calle Sol 11', 'Tucumán', 'Tucumán', 'ONG B', 'Si', 'Medifé'),
('Camila', 'Vega', '22334455', '1996-10-03', 'Femenino', 'Av. Luz 59', 'Posadas', 'Misiones', 'ONG C', 'No', NULL),
('Federico', 'Castro', '33445566', '1998-04-19', 'Masculino', 'Calle Nieve 27', 'Formosa', 'Formosa', 'ONG A', 'Si', 'Galeno'),
('Natalia', 'García', '44556677', '1995-07-25', 'Femenino', 'Av. Arena 16', 'Resistencia', 'Chaco', 'ONG B', 'Si', 'OSDE'),
('Pablo', 'Mendoza', '55667788', '1993-01-14', 'Masculino', 'Calle Viento 42', 'San Luis', 'San Luis', 'ONG C', 'No', NULL),
('Valeria', 'Alvarez', '66778899', '1997-05-06', 'Femenino', 'Av. Nieve 73', 'Río Gallegos', 'Santa Cruz', 'ONG A', 'Si', 'Medifé'),
('Santiago', 'Herrera', '77889900', '1996-12-12', 'Masculino', 'Calle Lago 51', 'Ushuaia', 'Tierra del Fuego', 'ONG B', 'No', NULL),
('Florencia', 'Mora', '88990011', '1994-09-09', 'Femenino', 'Av. Sol 101', 'San Miguel', 'Buenos Aires', 'ONG C', 'Si', 'Swiss Medical'),
('Andrés', 'Silva', '99001122', '1998-03-04', 'Masculino', 'Calle Cielo 21', 'Corrientes', 'Corrientes', 'ONG A', 'No', NULL),
('Gabriela', 'Paz', '10101010', '1995-11-11', 'Femenino', 'Av. Río 67', 'La Rioja', 'La Rioja', 'ONG B', 'Si', 'Galeno'),
('Lucas', 'Ortiz', '12121212', '1993-08-08', 'Masculino', 'Calle Sol 88', 'Santa Fe', 'Santa Fe', 'ONG C', 'Si', 'OSDE'),
('Marina', 'Sosa', '13131313', '1997-04-04', 'Femenino', 'Av. Luna 45', 'Salta', 'Salta', 'ONG A', 'No', NULL),
('Tomás', 'Figueroa', '14141414', '1996-06-06', 'Masculino', 'Calle Mar 39', 'Córdoba', 'Córdoba', 'ONG B', 'Si', 'Medifé'),
('Jimena', 'Rivas', '15151515', '1994-10-10', 'Femenino', 'Av. Estrella 17', 'Buenos Aires', 'Buenos Aires', 'ONG C', 'No', NULL),
('Ezequiel', 'Campos', '16161616', '1998-02-02', 'Masculino', 'Calle Lago 29', 'Mendoza', 'Mendoza', 'ONG A', 'Si', 'Swiss Medical'),
('Carla', 'Méndez', '17171717', '1995-12-12', 'Femenino', 'Av. Río 50', 'La Plata', 'Buenos Aires', 'ONG B', 'No', NULL),
('Javier', 'Benítez', '18181818', '1993-07-07', 'Masculino', 'Calle Nubes 22', 'Paraná', 'Entre Ríos', 'ONG C', 'Si', 'Galeno'),
('Sabrina', 'Cruz', '19191919', '1997-01-01', 'Femenino', 'Av. Viento 70', 'Neuquén', 'Neuquén', 'ONG A', 'Si', 'OSDE');


UPDATE Becado SET Fecha_Nacimiento = '2008-05-10' WHERE ID_Becado = 2;  -- María Gómez
UPDATE Becado SET Fecha_Nacimiento = '2007-11-20' WHERE ID_Becado = 5;  -- Jorge Ramírez
UPDATE Becado SET Fecha_Nacimiento = '2009-03-15' WHERE ID_Becado = 8;  -- Sofía González

-- 6 becados con edad 19-22 años
UPDATE Becado SET Fecha_Nacimiento = '2005-07-30' WHERE ID_Becado = 3;  -- Carlos López
UPDATE Becado SET Fecha_Nacimiento = '2004-12-01' WHERE ID_Becado = 6;  -- Ana Fernández
UPDATE Becado SET Fecha_Nacimiento = '2006-02-20' WHERE ID_Becado = 9;  -- Diego Torres
UPDATE Becado SET Fecha_Nacimiento = '2003-09-15' WHERE ID_Becado = 10; -- Lucía Romero
UPDATE Becado SET Fecha_Nacimiento = '2005-05-05' WHERE ID_Becado = 12; -- Camila Vega
UPDATE Becado SET Fecha_Nacimiento = '2004-08-23' WHERE ID_Becado = 14; -- Natalia García

-- Actualizar 5 becados con edades 27-30 a edades entre 18 y 23 años (2002-2007 aprox)

UPDATE Becado SET Fecha_Nacimiento = '2003-04-15' WHERE ID_Becado = 1;  -- Juan Pérez 
UPDATE Becado SET Fecha_Nacimiento = '2002-11-22' WHERE ID_Becado = 4;  -- Laura Martínez
UPDATE Becado SET Fecha_Nacimiento = '2004-07-20' WHERE ID_Becado = 7;  -- Ricardo Sánchez 
UPDATE Becado SET Fecha_Nacimiento = '2005-03-18' WHERE ID_Becado = 15; -- Pablo Mendoza
UPDATE Becado SET Fecha_Nacimiento = '2006-09-09' WHERE ID_Becado = 18; -- Florencia Mora 

UPDATE Becado SET Fecha_Nacimiento = '2006-04-15' WHERE ID_Becado = 1;