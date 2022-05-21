CREATE TABLE [dbo].[Order]
(
	[Reciptnumber] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [telSalesID] NVARCHAR(50) NOT NULL, 
    [customerID] NVARCHAR(50) NOT NULL, 
    [addressID] INT NOT NULL, 
    [contactID] INT NOT NULL, 
    CONSTRAINT [FK_Order_TelSales] FOREIGN KEY ([telSalesID]) REFERENCES [TelSales]([GovId]), 
    CONSTRAINT [FK_Order_Customer] FOREIGN KEY ([customerID]) REFERENCES [Customer]([accountCode]), 
    CONSTRAINT [FK_Order_Address] FOREIGN KEY ([addressID]) REFERENCES [Address]([id]), 
    CONSTRAINT [FK_Order_Contact] FOREIGN KEY ([contactID]) REFERENCES [Contact]([Id])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Delivery Address',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Order',
    @level2type = N'COLUMN',
    @level2name = 'addressID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Delivery Customer Contact',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Order',
    @level2type = N'COLUMN',
    @level2name = N'contactID'