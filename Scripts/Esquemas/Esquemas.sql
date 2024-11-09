-- Verificar y crear los esquemas
IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'MiEsquema')
BEGIN
    EXEC('CREATE SCHEMA MiEsquema');
END

USE dbSiticCommerce;

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'Products')
BEGIN
    EXEC('CREATE SCHEMA Products');
END

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'Products_Configurations')
BEGIN
    EXEC('CREATE SCHEMA Products_Configurations');
END

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'Carts')
BEGIN
    EXEC('CREATE SCHEMA Carts');
END

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'Cart_Items')
BEGIN
    EXEC('CREATE SCHEMA Cart_Items');
END

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'Orders')
BEGIN
    EXEC('CREATE SCHEMA Orders');
END

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'Order_Items')
BEGIN
    EXEC('CREATE SCHEMA Order_Items');
END