IF EXISTS (SELECT 1 FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[dbo].[vwStock_Status]') AND type IN (N'V'))
DROP VIEW [dbo].[vwStock_Status]
GO

CREATE VIEW [dbo].[vwStock_Status]
WITH ENCRYPTION 
AS
SELECT Id, [Key], Status_Name
FROM (VALUES
    (1, 'IN_STOCK', 'In Stock'),
    (2, 'OUT_OF_STOCK', 'Out of Stock'),
    (3, 'LOW_STOCK', 'Low Stock')
) AS Stock_Status(Id, [Key], Status_Name)
GO