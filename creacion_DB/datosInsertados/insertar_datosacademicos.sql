USE SistemaGestionBisblick;

INSERT INTO DatosAcademicos (ID_Academico, Carrera, Universidad, A�o_Ingreso, Tipo, Beca_Universidad, Area, Nivel_Ingles, Examenes_Ingles, ID_Becado) VALUES
(1, 'Administraci�n', 'Universidad de Buenos Aires', 2014, 'P�blica', 'Si', 'Gesti�n', 'Intermedio', 'TOEFL', 1),
(2, 'Ingenier�a', 'Universidad Nacional de C�rdoba', 2012, 'P�blica', 'No', 'Tecnolog�a', 'Avanzado', 'IELTS', 2),
(3, 'Comunicaci�n', 'Universidad Nacional de Rosario', 2015, 'P�blica', 'Si', 'Medios', 'B�sico', NULL, 3),
(4, 'Derecho', 'Universidad Nacional de Mendoza', 2013, 'P�blica', 'Si', 'Legal', 'Intermedio', NULL, 4),
(5, 'Psicolog�a', 'Universidad Nacional de Salta', 2011, 'P�blica', 'No', 'Salud', 'Avanzado', 'TOEFL', 5),
(6, 'Medicina', 'Universidad Nacional de La Plata', 2014, 'P�blica', 'Si', 'Salud', 'Avanzado', 'IELTS', 6),
(7, 'Arquitectura', 'Universidad Nacional de Tucum�n', 2013, 'P�blica', 'No', 'Dise�o', 'Intermedio', NULL, 7),
(8, 'Econom�a', 'Universidad Nacional de Entre R�os', 2012, 'P�blica', 'Si', 'Finanzas', 'B�sico', NULL, 8),
(9, 'Ingenier�a', 'Universidad Nacional de La Rioja', 2015, 'P�blica', 'No', 'Tecnolog�a', 'Avanzado', 'IELTS', 9),
(10, 'Administraci�n', 'Universidad Nacional de San Juan', 2013, 'P�blica', 'Si', 'Gesti�n', 'Intermedio', 'TOEFL', 10),
(11, 'Ingenier�a', 'Universidad Nacional de Tucum�n', 2012, 'P�blica', 'Si', 'Tecnolog�a', 'Avanzado', 'IELTS', 11),
(12, 'Comunicaci�n', 'Universidad Nacional de Misiones', 2014, 'P�blica', 'No', 'Medios', 'B�sico', NULL, 12),
(13, 'Ingenier�a', 'Universidad Nacional de Formosa', 2013, 'P�blica', 'Si', 'Electr�nica', 'Intermedio', 'TOEFL', 13),
(14, 'Derecho', 'Universidad Nacional del Chaco', 2014, 'P�blica', 'Si', 'Legal', 'Avanzado', 'IELTS', 14),
(15, 'Psicolog�a', 'Universidad Nacional de San Luis', 2011, 'P�blica', 'No', 'Salud', 'Intermedio', NULL, 15),
(16, 'Medicina', 'Universidad Nacional de Santa Cruz', 2014, 'P�blica', 'Si', 'Salud', 'Avanzado', 'TOEFL', 16),
(17, 'Administraci�n', 'Universidad Nacional de Tierra del Fuego', 2013, 'P�blica', 'No', 'Gesti�n', 'B�sico', NULL, 17),
(18, 'Ingenier�a', 'Universidad Nacional de Buenos Aires', 2012, 'P�blica', 'Si', 'Tecnolog�a', 'Avanzado', 'IELTS', 18),
(19, 'Comunicaci�n', 'Universidad Nacional de Corrientes', 2014, 'P�blica', 'No', 'Medios', 'Intermedio', NULL, 19),
(20, 'Derecho', 'Universidad Nacional de La Rioja', 2013, 'P�blica', 'Si', 'Legal', 'Avanzado', 'TOEFL', 20),
(21, 'Ingenier�a', 'Universidad Nacional de Santa Fe', 2012, 'P�blica', 'Si', 'Tecnolog�a', 'Intermedio', 'IELTS', 21),
(22, 'Psicolog�a', 'Universidad Nacional de Salta', 2014, 'P�blica', 'No', 'Salud', 'B�sico', NULL, 22),
(23, 'Administraci�n', 'Universidad Nacional de C�rdoba', 2013, 'P�blica', 'Si', 'Gesti�n', 'Intermedio', 'TOEFL', 23),
(24, 'Ingenier�a', 'Universidad Nacional de Buenos Aires', 2011, 'P�blica', 'No', 'Tecnolog�a', 'B�sico', NULL, 24),
(25, 'Comunicaci�n', 'Universidad Nacional de Mendoza', 2014, 'P�blica', 'Si', 'Medios', 'Avanzado', 'IELTS', 25),
(26, 'Derecho', 'Universidad Nacional de La Plata', 2013, 'P�blica', 'No', 'Legal', 'Intermedio', NULL, 26),
(27, 'Medicina', 'Universidad Nacional de Entre R�os', 2012, 'P�blica', 'Si', 'Salud', 'Avanzado', 'TOEFL', 27),
(28, 'Administraci�n', 'Universidad Nacional de Neuqu�n', 2014, 'P�blica', 'Si', 'Gesti�n', 'Intermedio', 'IELTS', 28);

-- 5 becados pasan a Universidad de Buenos Aires
UPDATE DatosAcademicos SET Universidad = 'Universidad de Buenos Aires' WHERE ID_Academico = 2;
UPDATE DatosAcademicos SET Universidad = 'Universidad de Buenos Aires' WHERE ID_Academico = 7;
UPDATE DatosAcademicos SET Universidad = 'Universidad de Buenos Aires' WHERE ID_Academico = 15;
UPDATE DatosAcademicos SET Universidad = 'Universidad de Buenos Aires' WHERE ID_Academico = 22;
UPDATE DatosAcademicos SET Universidad = 'Universidad de Buenos Aires' WHERE ID_Academico = 26;

-- 3 becados pasan a Universidad T�cnica Nacional
UPDATE DatosAcademicos SET Universidad = 'Universidad T�cnica Nacional' WHERE ID_Academico = 10;
UPDATE DatosAcademicos SET Universidad = 'Universidad T�cnica Nacional' WHERE ID_Academico = 13;
UPDATE DatosAcademicos SET Universidad = 'Universidad T�cnica Nacional' WHERE ID_Academico = 20;