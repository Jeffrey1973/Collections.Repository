CREATE TABLE [dbo].[ISBN]
(
	[Id] INT NOT NULL PRIMARY KEY Identity, 
	[WorkId] INT NOT NULL, 
    [IsbnNumber] NVARCHAR(50) NOT NULL
)
