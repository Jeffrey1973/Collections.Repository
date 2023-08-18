CREATE TABLE [dbo].[Person]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [MiddleName] NVARCHAR(50) NULL, 
    [PreferredName] NVARCHAR(50) NULL, 
    [DateOfBirth] DATE NOT NULL, 
    [Created] DATETIME2 NULL DEFAULT GETUTCDATE(), 
    [Updated] DATETIME2 NULL DEFAULT GETUTCDATE(), 
    [IsActive] BIT NOT NULL DEFAULT 1
)

Go 

CREATE TRIGGER [dbo].[Trigger_PersonUpdate]
    ON [dbo].[Person]
    FOR UPDATE
    AS
    BEGIN
        SET NoCount ON
		update dbo.Person
			set Updated = GETUTCDATE()
			where Id in (select Id from inserted);
    END