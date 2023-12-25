CREATE TABLE [dbo].[DeweyDecimal]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [WorkId] INT NOT NULL, 
    [DeweyDecimalNumber] NVARCHAR(50) NULL, 
    [DeweyDecimalDescription] NVARCHAR(MAX) NULL
)
