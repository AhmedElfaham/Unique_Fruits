CREATE TABLE [dbo].[TelSales]
(
	[GovId] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [commission] DECIMAL(3) NOT NULL, 
    [base_salary] DECIMAL(3) NOT NULL 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Government Identity number',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TelSales',
    @level2type = N'COLUMN',
    @level2name = N'GovId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'commission rate',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TelSales',
    @level2type = N'COLUMN',
    @level2name = N'commission'