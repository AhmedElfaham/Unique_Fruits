CREATE TABLE [dbo].[Contact]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [description] NVARCHAR(250) NOT NULL, 
    [customerID] NVARCHAR(50) NULL, 
    [telSalesID] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_Contacts_Telsales] FOREIGN KEY (telSalesID) REFERENCES [TelSales]([GovId]), 
    CONSTRAINT [FK_Contacts_customer] FOREIGN KEY ([customerID]) REFERENCES [Customer]([accountCode]) 
)
