-- Procedimiento almacenado para insertar becados

CREATE PROCEDURE sp_InsertarBecado
    @Nombre VARCHAR(50),
    @Apellido VARCHAR(50),
    @DNI VARCHAR(20),
    @Fecha_Nacimiento DATE,
    @Genero VARCHAR(20),
    @Direccion VARCHAR(100),
    @Localidad_Actual VARCHAR(50),
    @Provincia_Actual VARCHAR(50),
    @ONG VARCHAR(100),
    @Tiene_Cobertura_Medica VARCHAR(2),
    @Nombre_Cobertura_Medica VARCHAR(100)
AS
BEGIN
    INSERT INTO Becado (
        Nombre, Apellido, DNI, Fecha_Nacimiento, Genero,
        Direccion, Localidad_Actual, Provincia_Actual,
        ONG, Tiene_Cobertura_Medica, Nombre_Cobertura_Medica
    )
    VALUES (
        @Nombre, @Apellido, @DNI, @Fecha_Nacimiento, @Genero,
        @Direccion, @Localidad_Actual, @Provincia_Actual,
        @ONG, @Tiene_Cobertura_Medica, @Nombre_Cobertura_Medica
    );
END;
GO
