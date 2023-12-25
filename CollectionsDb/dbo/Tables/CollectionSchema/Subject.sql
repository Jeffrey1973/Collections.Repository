CREATE TABLE [dbo].[Subject]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[PersonId] INT NULL, -- custom subject
	[Name] nvarchar(50) NOT NULL,

	[Created] DATETIME2 NULL DEFAULT GETUTCDATE(), 
    [Updated] DATETIME2 NULL DEFAULT GETUTCDATE(), 
    [IsActive] BIT NOT NULL DEFAULT 1
)
