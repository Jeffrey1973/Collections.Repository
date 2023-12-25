CREATE TABLE [dbo].[CollectionAssignment]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[PersonId] INT NULL, -- collections can be custom but do not have to be (track actions on books not in library) for example
	[CollectionId] INT NOT NULL,
	[WorkId] INT NOT NULL,

	[Created] DATETIME2 NULL DEFAULT GETUTCDATE(), 
    [Updated] DATETIME2 NULL DEFAULT GETUTCDATE(), 
    [IsActive] BIT NOT NULL DEFAULT 1

)
