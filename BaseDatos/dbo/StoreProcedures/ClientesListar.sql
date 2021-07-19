CREATE PROCEDURE [dbo].[ClientesListar]
@Cedula INT = NULL	
AS
	BEGIN
		SET NOCOUNT ON
		SELECT 
		Cedula, Nombre, Apellidos, Direccion, FechaNacimiento, Telefono
		
		FROM	
			Clientes
			WHERE (@Cedula IS NULL OR Cedula = @Cedula)
	END
