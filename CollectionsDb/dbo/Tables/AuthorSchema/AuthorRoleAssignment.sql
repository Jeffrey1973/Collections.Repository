﻿CREATE TABLE [dbo].[AuthorRoleAssignment]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[AuthorId] INT NOT NULL, 
	[BookId] INT NOT NULL,
	[AuthorRole] NVARCHAR(50) NOT NULL, 
	[Created] DATETIME2 NOT NULL DEFAULT GetUTCDate(), 
	[Updated] DATETIME2 NOT NULL DEFAULT GETUTCDATE(), 
	[IsActive] BIT NOT NULL DEFAULT 1
)
