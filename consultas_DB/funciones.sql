-- Función para verificar si un becado tiene beca activa

CREATE FUNCTION fn_TieneBecaActiva (
    @ID_Becado INT
)
RETURNS VARCHAR(2)
AS
BEGIN
    DECLARE @Resultado VARCHAR(2);

    IF EXISTS (
        SELECT 1 
        FROM Beca 
        WHERE ID_Becado = @ID_Becado AND Estado = 'Activa'
    )
        SET @Resultado = 'Si';
    ELSE
        SET @Resultado = 'No';

    RETURN @Resultado;
END;
GO

-- Ejemplo de uso
SELECT 
    Nombre, Apellido,
    dbo.fn_TieneBecaActiva(ID_Becado) AS Tiene_Beca_Activa
FROM Becado;
