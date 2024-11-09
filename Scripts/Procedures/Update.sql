-- Author:		Layla González
-- Description:	Desautoriza un DoctoXCobrar
-- Fecha:		09/11/2024

IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [Products].[Update]
GO
CREATE PROCEDURE [Products].[Update]
	@Name VARCHAR(255),
	@Description TEXT,
	@Price DECIMAL(18,2),
	@Current_Stock INT,
	@Max_Stock INT,
	@Min_Stock INT,
	@Stock_Status_Id INT,
	@Image_Path VARCHAR(255)

WITH  ENCRYPTION  
AS 
BEGIN
    UPDATE Products 
    SET Name = @Name,
    Description = @Description,
    Price = @Price,
    Current_Stock = @Current_Stock,
    Max_Stock = @Max_Stock,
    Min_Stock = @Min_Stock,
    Image_Path = @Image_Path

	INSERT INTO Products (Name, Description, Price, Current_Stock, Max_Stock, Min_Stock, Image_Path)
	VALUES (@Name, @Description, @Price, @Current_Stock, @Max_Stock, @Min_Stock, @Image_Path)
END
GO
EXEC sp_recompile N'[]';
GO