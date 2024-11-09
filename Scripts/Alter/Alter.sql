-- Alter table para añadir llave foránea del maestro en la tabla Cart_Items
IF NOT EXISTS ( SELECT 1 FROM sys_foreign_keys WHERE name = 'FX_Cart_Items_Cart_Id' )
BEGIN
    ALTER TABLE [dbo].[Cart_Items]
    ADD CONSTRAINT FX_Cart_Items_Cart_Id
    FOREIGN KEY ([Cart_Id]) REFERENCES [dbo].[Cart].[Id]
END

-- Alter table para añadir llave foránea del producto en la tabla Cart_Items
IF NOT EXISTS ( SELECT 1 FROM sys_foreign_keys WHERE name = 'FX_Cart_Items_Product_Id' )
BEGIN
    ALTER TABLE [dbo].[Cart_Items]
    ADD CONSTRAINT FX_Cart_Items_Product_Id
    FOREIGN KEY ([Product_Id]) REFERENCES [dbo].[Products].[Id]
END