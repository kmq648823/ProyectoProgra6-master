CREATE TABLE [dbo].[Productos]
(
	Categoria VARCHAR(250) NOT NULL PRIMARY KEY
 ,  Nombre VARCHAR(250) NOT NULL 
 ,  Cantidad INT NOT NULL
 ,  Carateristica VARCHAR(250) NOT NULL
 ,  Precio INT NOT NULL
 ,  Estado BIT NOT NULL
)
