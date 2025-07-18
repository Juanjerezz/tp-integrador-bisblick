-- Creación de Vistas

CREATE VIEW Vista_InfoCompletaBecado AS
SELECT 
    B.Nombre, B.Apellido, B.Genero, B.Provincia_Actual,
    DA.Universidad, DA.Carrera, DL.Ocupacion, DL.CargaHoraria,
    Beca.Estado, Beca.Tipo_Beca
FROM Becado B
LEFT JOIN DatosAcademicos DA ON B.ID_Becado = DA.ID_Becado
LEFT JOIN DatosLaborales DL ON B.ID_Becado = DL.ID_Becado
LEFT JOIN Beca ON B.ID_Becado = Beca.ID_Becado;
GO

CREATE VIEW Vista_BecasPorEmpresa AS
SELECT Empresa, COUNT(*) AS Cantidad_Becas
FROM Beca
GROUP BY Empresa;
GO
