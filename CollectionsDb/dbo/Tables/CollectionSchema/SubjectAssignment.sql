﻿CREATE TABLE [dbo].[SubjectAssignment]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[PersonId] INT NULL, -- custom subject
	[WorkId] INT NOT NULL,

	[Created] DATETIME2 NULL DEFAULT GETUTCDATE(), 
    [Updated] DATETIME2 NULL DEFAULT GETUTCDATE(), 
    [IsActive] BIT NOT NULL DEFAULT 1
)
