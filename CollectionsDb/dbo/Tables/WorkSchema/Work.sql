CREATE TABLE [dbo].[Work]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[WorkType] nvarchar(50) not null,
	[WorkId] INT NOT NULL, -- this is the PK  standard 'Id' 
	                      -- field in corresponding table 
						  -- e.g. Id in 'Book' Table if 
						  -- it is a book and etc.
						  
	[Created] DATETIME2 NULL, 
    [Updated] DATETIME2 NULL, 
    [IsActive] BIT NULL DEFAULT 1, 
)
