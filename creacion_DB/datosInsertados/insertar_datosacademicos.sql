USE SistemaGestionBisblick;

INSERT INTO DatosAcademicos (ID_Academico, Carrera, Universidad, Año_Ingreso, Tipo, Beca_Universidad, Area, Nivel_Ingles, Examenes_Ingles, ID_Becado) VALUES
(1, 'Administración', 'Universidad de Buenos Aires', 2014, 'Pública', 'Si', 'Gestión', 'Intermedio', 'TOEFL', 1),
(2, 'Ingeniería', 'Universidad Nacional de Córdoba', 2012, 'Pública', 'No', 'Tecnología', 'Avanzado', 'IELTS', 2),
(3, 'Comunicación', 'Universidad Nacional de Rosario', 2015, 'Pública', 'Si', 'Medios', 'Básico', NULL, 3),
(4, 'Derecho', 'Universidad Nacional de Mendoza', 2013, 'Pública', 'Si', 'Legal', 'Intermedio', NULL, 4),
(5, 'Psicología', 'Universidad Nacional de Salta', 2011, 'Pública', 'No', 'Salud', 'Avanzado', 'TOEFL', 5),
(6, 'Medicina', 'Universidad Nacional de La Plata', 2014, 'Pública', 'Si', 'Salud', 'Avanzado', 'IELTS', 6),
(7, 'Arquitectura', 'Universidad Nacional de Tucumán', 2013, 'Pública', 'No', 'Diseño', 'Intermedio', NULL, 7),
(8, 'Economía', 'Universidad Nacional de Entre Ríos', 2012, 'Pública', 'Si', 'Finanzas', 'Básico', NULL, 8),
(9, 'Ingeniería', 'Universidad Nacional de La Rioja', 2015, 'Pública', 'No', 'Tecnología', 'Avanzado', 'IELTS', 9),
(10, 'Administración', 'Universidad Nacional de San Juan', 2013, 'Pública', 'Si', 'Gestión', 'Intermedio', 'TOEFL', 10),
(11, 'Ingeniería', 'Universidad Nacional de Tucumán', 2012, 'Pública', 'Si', 'Tecnología', 'Avanzado', 'IELTS', 11),
(12, 'Comunicación', 'Universidad Nacional de Misiones', 2014, 'Pública', 'No', 'Medios', 'Básico', NULL, 12),
(13, 'Ingeniería', 'Universidad Nacional de Formosa', 2013, 'Pública', 'Si', 'Electrónica', 'Intermedio', 'TOEFL', 13),
(14, 'Derecho', 'Universidad Nacional del Chaco', 2014, 'Pública', 'Si', 'Legal', 'Avanzado', 'IELTS', 14),
(15, 'Psicología', 'Universidad Nacional de San Luis', 2011, 'Pública', 'No', 'Salud', 'Intermedio', NULL, 15),
(16, 'Medicina', 'Universidad Nacional de Santa Cruz', 2014, 'Pública', 'Si', 'Salud', 'Avanzado', 'TOEFL', 16),
(17, 'Administración', 'Universidad Nacional de Tierra del Fuego', 2013, 'Pública', 'No', 'Gestión', 'Básico', NULL, 17),
(18, 'Ingeniería', 'Universidad Nacional de Buenos Aires', 2012, 'Pública', 'Si', 'Tecnología', 'Avanzado', 'IELTS', 18),
(19, 'Comunicación', 'Universidad Nacional de Corrientes', 2014, 'Pública', 'No', 'Medios', 'Intermedio', NULL, 19),
(20, 'Derecho', 'Universidad Nacional de La Rioja', 2013, 'Pública', 'Si', 'Legal', 'Avanzado', 'TOEFL', 20),
(21, 'Ingeniería', 'Universidad Nacional de Santa Fe', 2012, 'Pública', 'Si', 'Tecnología', 'Intermedio', 'IELTS', 21),
(22, 'Psicología', 'Universidad Nacional de Salta', 2014, 'Pública', 'No', 'Salud', 'Básico', NULL, 22),
(23, 'Administración', 'Universidad Nacional de Córdoba', 2013, 'Pública', 'Si', 'Gestión', 'Intermedio', 'TOEFL', 23),
(24, 'Ingeniería', 'Universidad Nacional de Buenos Aires', 2011, 'Pública', 'No', 'Tecnología', 'Básico', NULL, 24),
(25, 'Comunicación', 'Universidad Nacional de Mendoza', 2014, 'Pública', 'Si', 'Medios', 'Avanzado', 'IELTS', 25),
(26, 'Derecho', 'Universidad Nacional de La Plata', 2013, 'Pública', 'No', 'Legal', 'Intermedio', NULL, 26),
(27, 'Medicina', 'Universidad Nacional de Entre Ríos', 2012, 'Pública', 'Si', 'Salud', 'Avanzado', 'TOEFL', 27),
(28, 'Administración', 'Universidad Nacional de Neuquén', 2014, 'Pública', 'Si', 'Gestión', 'Intermedio', 'IELTS', 28);

-- 5 becados pasan a Universidad de Buenos Aires
UPDATE DatosAcademicos SET Universidad = 'Universidad de Buenos Aires' WHERE ID_Academico = 2;
UPDATE DatosAcademicos SET Universidad = 'Universidad de Buenos Aires' WHERE ID_Academico = 7;
UPDATE DatosAcademicos SET Universidad = 'Universidad de Buenos Aires' WHERE ID_Academico = 15;
UPDATE DatosAcademicos SET Universidad = 'Universidad de Buenos Aires' WHERE ID_Academico = 22;
UPDATE DatosAcademicos SET Universidad = 'Universidad de Buenos Aires' WHERE ID_Academico = 26;

-- 3 becados pasan a Universidad Técnica Nacional
UPDATE DatosAcademicos SET Universidad = 'Universidad Técnica Nacional' WHERE ID_Academico = 10;
UPDATE DatosAcademicos SET Universidad = 'Universidad Técnica Nacional' WHERE ID_Academico = 13;
UPDATE DatosAcademicos SET Universidad = 'Universidad Técnica Nacional' WHERE ID_Academico = 20;