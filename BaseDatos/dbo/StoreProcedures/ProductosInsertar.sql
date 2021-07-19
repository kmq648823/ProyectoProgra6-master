﻿CREATE PROCEDURE [dbo].[ProductosInsertar]
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

   INSERT INTO Productos 
   (Categoria, Nombre, Cantidad, Carateristicas, Precio, Estado)
	
   VALUES
   (
     @Categoria, @Nombre, @Cantidad, @Caracteristicas, @Precio, @Estado
   )

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