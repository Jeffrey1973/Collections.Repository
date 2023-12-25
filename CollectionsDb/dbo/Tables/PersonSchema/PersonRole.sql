CREATE TABLE [dbo].[PersonRole]
(
	[Id] INT NOT NULL PRIMARY KEY Identity, 
    [Role] NVARCHAR(50) NOT NULL, 

    [Created] DATETIME2 NULL DEFAULT GetUTCDate(), 
    [Updated] DATETIME2 NULL DEFAULT GETUTCDATE(), 
    [IsActive] BIT NULL DEFAULT 1
)

Go 

CREATE TRIGGER [dbo].[Trigger_PersonROleUpdate]
    ON [dbo].[PersonRole]
    FOR UPDATE
    AS
    BEGIN
        SET NoCount ON
		update dbo.PersonRole
			set Updated = GETUTCDATE()
			where Id in (select Id from inserted);
    END