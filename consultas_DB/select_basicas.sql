-- Consultas básicas con SELECT y GROUP BY

-- Cantidad de becados por universidad
SELECT Universidad, COUNT(*) AS Cantidad_Becados
FROM DatosAcademicos
GROUP BY Universidad;

-- Si actualmente trabaja o no (Ocupación)
SELECT Ocupacion, COUNT(*) AS Total
FROM DatosLaborales
GROUP BY Ocupacion;

-- Si está en búsqueda laboral, porcentaje de género
SELECT B.Genero, DL.Busqueda_Laboral, COUNT(*) AS Total
FROM DatosLaborales DL
JOIN Becado B ON DL.ID_Becado = B.ID_Becado
GROUP BY B.Genero, DL.Busqueda_Laboral;

-- Cantidad de becados por provincia
SELECT Provincia_Actual, COUNT(*) AS Cantidad
FROM Becado
GROUP BY Provincia_Actual;

-- Nombre, Apellido y nivel de inglés
SELECT B.Nombre, B.Apellido, DA.Nivel_Ingles
FROM Becado B
JOIN DatosAcademicos DA ON B.ID_Becado = DA.ID_Becado;

-- Rango de edades
SELECT 
    CASE 
        WHEN Edad BETWEEN 16 AND 18 THEN '16-18'
        WHEN Edad BETWEEN 19 AND 22 THEN '19-22'
        WHEN Edad BETWEEN 23 AND 26 THEN '23-26'
        WHEN Edad BETWEEN 27 AND 30 THEN '27-30'
        ELSE '31+'
    END AS Rango_Edad,
    COUNT(*) AS Cantidad
FROM (
    SELECT DATEDIFF(YEAR, Fecha_Nacimiento, GETDATE()) AS Edad
    FROM Becado
) AS SubEdad
GROUP BY 
    CASE 
        WHEN Edad BETWEEN 16 AND 18 THEN '16-18'
        WHEN Edad BETWEEN 19 AND 22 THEN '19-22'
        WHEN Edad BETWEEN 23 AND 26 THEN '23-26'
        WHEN Edad BETWEEN 27 AND 30 THEN '27-30'
        ELSE '31+'
    END;

-- Estado actual de becas
SELECT Estado, COUNT(*) AS Total
FROM Beca
GROUP BY Estado;

-- Cantidad de becados por universidad (con JOIN)
SELECT DA.Universidad, COUNT(*) AS Cantidad_Becados 
FROM DatosAcademicos DA
JOIN Becado B ON DA.ID_Becado = B.ID_Becado
GROUP BY DA.Universidad;

-- Cantidad de becas por empresa
SELECT Empresa, COUNT(*) AS Total
FROM Beca
GROUP BY Empresa;

-- Cantidad de becas por año
SELECT Año_Inicio, COUNT(*) AS Total
FROM Beca
GROUP BY Año_Inicio
ORDER BY Año_Inicio;

-- Promedio de edad de los becados
SELECT AVG(Edad) AS Promedio_Edad
FROM (
    SELECT DATEDIFF(YEAR, Fecha_Nacimiento, GETDATE()) AS Edad
    FROM Becado
) AS SubEdad;
