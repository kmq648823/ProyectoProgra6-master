CREATE PROCEDURE [dbo].[ClienteActualizar]
	@Cedula INT,
	@Nombre varchar(250),
	@Apellidos varchar(250),
	@Direccion varchar(500),
	@FechaNacimiento DATE,
	@Telefono varchar(250)
AS
 BEGIN
   SET NOCOUNT ON
   BEGIN TRANSACTION TRASA

   BEGIN TRY 

   UPDATE Clientes SET
   Nombre = @Nombre, Apellidos = @Apellidos, Direccion = @Direccion, FechaNacimiento = @FechaNacimiento, Telefono = @Telefono
	
  WHERE Cedula=@Cedula

   COMMIT TRANSACTION TRASA

     SELECT 0 AS CodeError, '' AS MsgError

   END TRY

   BEGIN CATCH
     SELECT 
	     ERROR_NUMBER() AS CodeError
	   , ERROR_MESSAGE() AS MsgError

	   ROLLBACK TRANSACTION TRASA
   END CATCH

 END