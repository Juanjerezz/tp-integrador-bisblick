-- Creación de Triggers

CREATE TRIGGER tr_ValidarEstadoBeca
ON Beca
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT * 
        FROM INSERTED 
        WHERE Estado NOT IN ('Activa', 'Finalizada', 'Egresado', 'Abandono')
    )
    BEGIN
        RAISERROR('El estado ingresado para la beca no es válido.', 16, 1);
        ROLLBACK;
    END
END;
GO

CREATE TRIGGER tr_ValidarEdadBecado
ON Becado
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM INSERTED
        WHERE DATEDIFF(YEAR, Fecha_Nacimiento, GETDATE()) < 16
    )
    BEGIN
        RAISERROR('El becado debe tener al menos 16 años.', 16, 1);
        ROLLBACK;
    END
END;
GO
