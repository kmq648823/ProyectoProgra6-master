CREATE PROCEDURE [dbo].[ProductosActualizar]
	@Categoria VARCHAR(250),
	@Nombre VARCHAR(250),
	@Cantidad INT,
	@Caracteristicas VARCHAR(500),
	@Precio INT,
	@Estado BIT
AS
 BEGIN
   SET NOCOUNT ON
   BEGIN TRANSACTION TRASA

   BEGIN TRY 

   UPDATE Productos SET
   Nombre = @Nombre, Cantidad = @Cantidad, Carateristicas = @Caracteristicas, Precio = @Precio, Estado = @Estado
	
  WHERE Categoria=@Categoria

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