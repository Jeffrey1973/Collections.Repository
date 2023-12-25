CREATE TABLE [dbo].[Author]
(
	[Id] INT NOT NULL PRIMARY KEY Identity, 
    [FirstName] NVARCHAR(50) NULL, 
    [LastName] NVARCHAR(50) NULL, 
    [MiddleName] NVARCHAR(50) NOT NULL, 
    [DisplayName] NVARCHAR(150) NULL, 
    [Prefix] NVARCHAR(50) NULL,
    [Suffix] NVARCHAR(50) NULL,
    [Created] DATETIME2 NULL, 
    [Updated] DATETIME2 NULL, 
    [IsActive] BIT NULL DEFAULT 1
    
)

GO

CREATE TRIGGER [dbo].[Trigger_AuthorUpdate]
    ON [dbo].[Author]
    FOR UPDATE
    AS
    BEGIN
         SET NoCount ON
		 update dbo.Author
			set Updated = GETUTCDATE()
			where Id in (select Id from inserted);
    END