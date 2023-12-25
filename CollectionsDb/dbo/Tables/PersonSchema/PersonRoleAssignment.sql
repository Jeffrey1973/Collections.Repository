CREATE TABLE [dbo].[PersonRoleAssignment]
(
	[Id] INT NOT NULL PRIMARY KEY Identity, 
	[PersonId] INT NOT NULL, 
	[PersonRole] NVARCHAR(50) NOT NULL, 

	[Created] DATETIME2 NOT NULL DEFAULT GetUTCDate(), 
	[Updated] DATETIME2 NOT NULL DEFAULT GETUTCDATE(), 
	[IsActive] BIT NOT NULL DEFAULT 1
)

Go

Go 

CREATE TRIGGER [dbo].[Trigger_PersonRoleAssignmentUpdate]
    ON [dbo].PersonRoleAssignment
    FOR UPDATE
    AS
    BEGIN
        SET NoCount ON
		update dbo.PersonRoleAssignment
			set Updated = GETUTCDATE()
			where Id in (select Id from inserted);
    END