CREATE TABLE [dbo].[Productos]
(
	Categoria VARCHAR(250) NOT NULL 
 ,  Nombre VARCHAR(250) NOT NULL PRIMARY KEY
 ,  Cantidad INT NOT NULL
 ,  Carateristica VARCHAR(250) NOT NULL
 ,  Precio INT NOT NULL
 ,  Estado BIT NOT NULL
)
