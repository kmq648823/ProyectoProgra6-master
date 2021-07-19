CREATE PROCEDURE [dbo].[ProductosListar]
@Categoria VARCHAR(250) = NULL	
AS
	BEGIN
		SET NOCOUNT ON
		SELECT 
		Categoria, Nombre, Cantidad, Carateristicas, Precio, Estado
		
		FROM	
			Productos
			WHERE (@Categoria IS NULL OR Categoria = @Categoria)
	END