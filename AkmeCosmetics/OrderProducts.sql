CREATE TABLE [dbo].[OrderProducts]
(
	[OrderReciptnumber] NVARCHAR(50) NOT NULL , 
    [ProductCode] NVARCHAR(50) NOT NULL, 
    [quantity] DECIMAL(3) NOT NULL, 
    PRIMARY KEY ([OrderReciptnumber], [ProductCode]), 
    CONSTRAINT [FK_OrderProducts_Product] FOREIGN KEY ([ProductCode]) REFERENCES [Product]([Code]), 
    CONSTRAINT [FK_OrderProducts_Order] FOREIGN KEY ([OrderReciptnumber]) REFERENCES [Order]([Reciptnumber])
)
